# generate_assets.cmake — Build host tools and generate binary assets.
#
# This script is invoked at *build time* (via cmake -P) to produce the
# binary asset files that preproc needs (*.gbapal, *.4bpp, *.bin, *.bin.rl).
#
# Expected variables (set via -D on the cmake command line):
#   SA1_DIR      – absolute path to the sa1 source directory
#   SA2_ROOT     – absolute path to the sa2 root directory
#   HOST_CXX     – host C++ compiler (for building C++ tools like mid2agb)
#   STAMP_FILE   – path to touch on success

# ── Step 1: Build host tools using their Makefiles ──────────────────────────
# gbagfx converts .pal → .gbapal and .png → .4bpp, and compresses with .rl
# entity_positions converts .csv → .bin
# aif2pcm converts .aif → .bin (sound samples)
# mid2agb converts .mid → .s (MIDI songs)

find_program(MAKE_EXE NAMES make gmake REQUIRED)

message(STATUS "Building shared tool libraries...")
execute_process(
    COMMAND "${MAKE_EXE}" -C "${SA2_ROOT}/tools/_shared"
    RESULT_VARIABLE RC
)
if(NOT RC EQUAL 0)
    message(FATAL_ERROR "Failed to build shared tool libraries (exit ${RC})")
endif()

message(STATUS "Building gbagfx...")
execute_process(
    COMMAND "${MAKE_EXE}" -C "${SA2_ROOT}/tools/gbagfx"
    RESULT_VARIABLE RC
)
if(NOT RC EQUAL 0)
    message(FATAL_ERROR "Failed to build gbagfx (exit ${RC})")
endif()

message(STATUS "Building entity_positions...")
execute_process(
    COMMAND "${MAKE_EXE}" -C "${SA2_ROOT}/tools/entity_positions"
    RESULT_VARIABLE RC
)
if(NOT RC EQUAL 0)
    message(FATAL_ERROR "Failed to build entity_positions (exit ${RC})")
endif()

message(STATUS "Building aif2pcm...")
execute_process(
    COMMAND "${MAKE_EXE}" -C "${SA2_ROOT}/tools/aif2pcm"
    RESULT_VARIABLE RC
)
if(NOT RC EQUAL 0)
    message(FATAL_ERROR "Failed to build aif2pcm (exit ${RC})")
endif()

message(STATUS "Building mid2agb...")
execute_process(
    COMMAND "${MAKE_EXE}" -C "${SA2_ROOT}/tools/mid2agb" "CXX=${HOST_CXX}"
    RESULT_VARIABLE RC
)
if(NOT RC EQUAL 0)
    message(FATAL_ERROR "Failed to build mid2agb (exit ${RC})")
endif()

set(GFX     "${SA2_ROOT}/tools/gbagfx/gbagfx${CMAKE_EXECUTABLE_SUFFIX}")
set(ENT_POS "${SA2_ROOT}/tools/entity_positions/entity_positions${CMAKE_EXECUTABLE_SUFFIX}")
set(AIF2PCM "${SA2_ROOT}/tools/aif2pcm/aif2pcm${CMAKE_EXECUTABLE_SUFFIX}")
set(MID2AGB "${SA2_ROOT}/tools/mid2agb/mid2agb${CMAKE_EXECUTABLE_SUFFIX}")

# ── Step 2: Convert .pal → .gbapal ─────────────────────────────────────────
file(GLOB_RECURSE PAL_FILES
    "${SA1_DIR}/graphics/*.pal"
    "${SA1_DIR}/data/*.pal"
)
foreach(PAL ${PAL_FILES})
    string(REGEX REPLACE "\\.pal$" ".gbapal" GBAPAL "${PAL}")
    # IS_NEWER_THAN returns true when the output file does not exist
    if("${PAL}" IS_NEWER_THAN "${GBAPAL}")
        execute_process(
            COMMAND "${GFX}" "${PAL}" "${GBAPAL}"
            WORKING_DIRECTORY "${SA1_DIR}"
            RESULT_VARIABLE RC
        )
        if(NOT RC EQUAL 0)
            message(WARNING "gbagfx failed on ${PAL} (exit ${RC})")
        endif()
    endif()
endforeach()

# ── Step 3: Convert .png → .4bpp (or .8bpp for 8bpp tiles) ───────────────
# The Makefile (graphics.mk) uses special flags for certain graphics:
#   - obj_tiles (sprite tiles) need -split_into_oam_shapes so that gbagfx
#     rearranges the image into OAM-compatible tile blocks.  Without this
#     flag the tile layout in VRAM won't match the OAM data tables,
#     causing sprite tiling glitches.
#   - tileset images need -ignore_trailing.
file(GLOB_RECURSE PNG_FILES
    "${SA1_DIR}/graphics/*.png"
    "${SA1_DIR}/data/*.png"
)
foreach(PNG ${PNG_FILES})
    # Images under an "8bpp" directory must be converted to .8bpp, not .4bpp
    if(PNG MATCHES "/8bpp/")
        string(REGEX REPLACE "\\.png$" ".8bpp" OUT "${PNG}")
    else()
        string(REGEX REPLACE "\\.png$" ".4bpp" OUT "${PNG}")
    endif()

    # Determine per-file conversion flags (matching graphics.mk rules)
    set(GFX_EXTRA_FLAGS "")
    if(PNG MATCHES "/obj_tiles/")
        # graphics.mk: graphics/sa1/obj_tiles/{4bpp,8bpp}/%.{4bpp,8bpp}
        #   → $(GFX) $< $@ -split_into_oam_shapes
        set(GFX_EXTRA_FLAGS -split_into_oam_shapes)
    elseif(PNG MATCHES "/tileset_[^/]*\\.png$" OR OUT MATCHES "/tiles\\.8bpp$")
        # graphics.mk: tileset_%.4bpp / tiles.8bpp → -ignore_trailing
        set(GFX_EXTRA_FLAGS -ignore_trailing)
    endif()

    if("${PNG}" IS_NEWER_THAN "${OUT}")
        execute_process(
            COMMAND "${GFX}" "${PNG}" "${OUT}" ${GFX_EXTRA_FLAGS}
            WORKING_DIRECTORY "${SA1_DIR}"
            RESULT_VARIABLE RC
        )
        if(NOT RC EQUAL 0)
            message(WARNING "gbagfx failed on ${PNG} (exit ${RC})")
        endif()
    endif()
endforeach()

# ── Step 4: Convert entity .csv → .bin → .bin.rl ──────────────────────────
file(GLOB_RECURSE CSV_FILES "${SA1_DIR}/data/sa1/maps/*/*/entities/*.csv")
foreach(CSV ${CSV_FILES})
    get_filename_component(CSV_NAME "${CSV}" NAME_WE)
    string(REGEX REPLACE "\\.csv$" ".bin" BIN "${CSV}")

    # Determine entity type and flags from filename
    if(CSV_NAME STREQUAL "rings")
        set(ENT_FLAGS -entities RINGS)
    elseif(CSV_NAME STREQUAL "enemies")
        set(ENT_FLAGS -entities ENEMIES -header "${SA2_ROOT}/include/constants/sa1/enemies.h")
    elseif(CSV_NAME STREQUAL "itemboxes")
        set(ENT_FLAGS -entities ITEMS -header "${SA2_ROOT}/include/constants/sa1/items.h")
    elseif(CSV_NAME STREQUAL "interactables")
        set(ENT_FLAGS -entities INTERACTABLES -header "${SA2_ROOT}/include/constants/sa1/interactables.h")
    else()
        message(WARNING "Unknown entity type: ${CSV_NAME}")
        continue()
    endif()

    # .csv → .bin
    if("${CSV}" IS_NEWER_THAN "${BIN}")
        execute_process(
            COMMAND "${ENT_POS}" "${CSV}" "${BIN}" ${ENT_FLAGS}
            WORKING_DIRECTORY "${SA1_DIR}"
            RESULT_VARIABLE RC
        )
        if(NOT RC EQUAL 0)
            message(WARNING "entity_positions failed on ${CSV} (exit ${RC})")
        endif()
    endif()

    # .bin → .bin.rl
    set(BIN_RL "${BIN}.rl")
    if("${BIN}" IS_NEWER_THAN "${BIN_RL}")
        execute_process(
            COMMAND "${GFX}" "${BIN}" "${BIN_RL}"
            WORKING_DIRECTORY "${SA1_DIR}"
            RESULT_VARIABLE RC
        )
        if(NOT RC EQUAL 0)
            message(WARNING "gbagfx rl-compress failed on ${BIN} (exit ${RC})")
        endif()
    endif()
endforeach()

# ── Step 5: Convert .aif → .bin (sound samples) ───────────────────────────
file(GLOB AIF_FILES "${SA1_DIR}/sound/sa1/direct_sound_samples/*.aif")
foreach(AIF ${AIF_FILES})
    string(REGEX REPLACE "\\.aif$" ".bin" BIN "${AIF}")
    if("${AIF}" IS_NEWER_THAN "${BIN}")
        execute_process(
            COMMAND "${AIF2PCM}" "${AIF}" "${BIN}"
            WORKING_DIRECTORY "${SA1_DIR}"
            RESULT_VARIABLE RC
        )
        if(NOT RC EQUAL 0)
            message(WARNING "aif2pcm failed on ${AIF} (exit ${RC})")
        endif()
    endif()
endforeach()

# ── Step 6: Convert .mid → .s (MIDI songs) ────────────────────────────────
# Per-song mid2agb flags, mirroring sa1/songs.mk.
# Each song needs the correct voice group (-G), volume (-V), reverb (-R),
# and optionally priority (-P).  Without these the generated assembly
# references wrong voice groups / volumes, causing audio glitches.
#
# Note on -C / -E: songs.mk passes "-C $(MIDI_COMMENTS) -E" where
# MIDI_COMMENTS is empty.  Because mid2agb's -C parser consumes the
# following argument as its value, -E is treated as the comment-style
# string rather than enabling exact gate-time.  Since comment style only
# affects assembly comments (not music data) and exact gate-time ends up
# disabled either way, we omit both flags here for clarity.

set(MID2AGB_FLAGS_se_ring_copy      -R0 -G4 -P20 -V100)
set(MID2AGB_FLAGS_song001           -R0 -G0 -V120)
set(MID2AGB_FLAGS_song002           -R0 -G0 -V115)
set(MID2AGB_FLAGS_song003           -R0 -G0 -V120)
set(MID2AGB_FLAGS_song004           -R0 -G7 -V108)
set(MID2AGB_FLAGS_song005           -R0 -G7 -V110)
set(MID2AGB_FLAGS_song006           -R0 -G7 -V105)
set(MID2AGB_FLAGS_song007           -R0 -G7 -V108)
set(MID2AGB_FLAGS_song008           -R0 -G7 -V108)
set(MID2AGB_FLAGS_song009           -R0 -G7 -V61)
set(MID2AGB_FLAGS_song010           -R0 -G6 -V115)
set(MID2AGB_FLAGS_song011           -R0 -G6 -V111)
set(MID2AGB_FLAGS_song012           -R0 -G0 -V110)
set(MID2AGB_FLAGS_song013           -R0 -G0 -V127)
set(MID2AGB_FLAGS_song014           -R0 -G0 -V110)
set(MID2AGB_FLAGS_song015           -R0 -G0 -V110)
set(MID2AGB_FLAGS_song016           -R0 -G0 -V110)
set(MID2AGB_FLAGS_song017           -R0 -G0 -V110)
set(MID2AGB_FLAGS_song018           -R0 -G6 -V110)
set(MID2AGB_FLAGS_song019           -R0 -G7 -V105)
set(MID2AGB_FLAGS_song020           -R0 -G6 -V110)
set(MID2AGB_FLAGS_song021           -R0 -G7 -V110)
set(MID2AGB_FLAGS_song022           -R0 -G6 -V110)
set(MID2AGB_FLAGS_song023           -R0 -G7 -V110)
set(MID2AGB_FLAGS_song024           -R0 -G0 -V110)
set(MID2AGB_FLAGS_song025           -R0 -G0 -V110)
set(MID2AGB_FLAGS_song026           -R0 -G7 -V110)
set(MID2AGB_FLAGS_song027           -R0 -G6 -V90)
set(MID2AGB_FLAGS_song028           -R0 -G5 -V115)
set(MID2AGB_FLAGS_song029           -R0 -G0 -V115)
set(MID2AGB_FLAGS_song030           -R0 -G0 -V115)
set(MID2AGB_FLAGS_song031           -R0 -G0 -V115)
set(MID2AGB_FLAGS_song032           -R0 -G7 -V115)
set(MID2AGB_FLAGS_song033           -R0 -G0 -V103)
set(MID2AGB_FLAGS_song034           -R0 -G5 -V117)
set(MID2AGB_FLAGS_song035           -R0 -G7 -V110)
set(MID2AGB_FLAGS_song036           -R0 -G7 -V100)
set(MID2AGB_FLAGS_song037           -R0 -G0 -V120)
set(MID2AGB_FLAGS_song038           -R0 -G0 -V120)
set(MID2AGB_FLAGS_song039           -R0 -G0 -V127)
set(MID2AGB_FLAGS_song040           -R178 -G0 -V127)
set(MID2AGB_FLAGS_song041           -R0 -G0 -V115)
set(MID2AGB_FLAGS_song042           -R0 -G0 -V115)
set(MID2AGB_FLAGS_mus_sp_stage_trick -R0 -G0 -V115)
set(MID2AGB_FLAGS_song044           -R0 -G0 -V120)
set(MID2AGB_FLAGS_song045           -R0 -G6 -V85)
set(MID2AGB_FLAGS_song046           -R0 -G7 -V92)
set(MID2AGB_FLAGS_song047           -R0 -G6 -V100)
set(MID2AGB_FLAGS_song048           -R0 -G6 -V103)
set(MID2AGB_FLAGS_song049           -R0 -G6 -V118)
set(MID2AGB_FLAGS_song050           -R0 -G7 -V105)
set(MID2AGB_FLAGS_song051           -R0 -G0 -V110)
set(MID2AGB_FLAGS_song052           -R0 -G0 -V105)
set(MID2AGB_FLAGS_song053           -R0 -G0 -V105)
set(MID2AGB_FLAGS_song054           -R0 -G0 -V105)
set(MID2AGB_FLAGS_song102           -R0 -G4 -P20 -V100)
set(MID2AGB_FLAGS_song103           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song104           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song105           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song106           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song107           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song108           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song109           -R0 -G4 -P20 -V110)
set(MID2AGB_FLAGS_song110           -R0 -G0 -P20 -V75)
set(MID2AGB_FLAGS_song111           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song112           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song113           -R0 -G0 -P20 -V75)
set(MID2AGB_FLAGS_song114           -R0 -G5 -P20 -V100)
set(MID2AGB_FLAGS_song115           -R0 -G0 -P20 -V75)
set(MID2AGB_FLAGS_song116           -R0 -G0 -P20 -V75)
set(MID2AGB_FLAGS_song117           -R0 -G4 -P20 -V100)
set(MID2AGB_FLAGS_song118           -R0 -G4 -P20 -V127)
set(MID2AGB_FLAGS_song119           -R0 -G0 -P20 -V127)
set(MID2AGB_FLAGS_song120           -R0 -G5 -P20 -V127)
set(MID2AGB_FLAGS_song121           -R0 -G5 -P20 -V107)
set(MID2AGB_FLAGS_song122           -R0 -G5 -P20 -V127)
set(MID2AGB_FLAGS_song123           -R0 -G5 -P20 -V127)
set(MID2AGB_FLAGS_song124           -R0 -G5 -P20 -V107)
set(MID2AGB_FLAGS_song125           -R0 -G5 -P20 -V100)
set(MID2AGB_FLAGS_song126           -R0 -G5 -P20 -V110)
set(MID2AGB_FLAGS_song127           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song128           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song129           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song130           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song131           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song132           -R0 -G5 -P20 -V110)
set(MID2AGB_FLAGS_song133           -R0 -G5 -P20 -V105)
set(MID2AGB_FLAGS_song134           -R0 -G5 -P20 -V110)
set(MID2AGB_FLAGS_song135           -R0 -G4 -P20 -V120)
set(MID2AGB_FLAGS_song136           -R0 -G5 -P20 -V110)
set(MID2AGB_FLAGS_song137           -R0 -G5 -P20 -V107)
set(MID2AGB_FLAGS_song138           -R0 -G0 -P20 -V127)
set(MID2AGB_FLAGS_song139           -R0 -G0 -P20 -V70)
set(MID2AGB_FLAGS_song140           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song141           -R0 -G4 -P20 -V120)
set(MID2AGB_FLAGS_song142           -R0 -G5 -P20 -V110)
set(MID2AGB_FLAGS_song143           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song144           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song145           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song146           -R0 -G5 -P20 -V64)
set(MID2AGB_FLAGS_song147           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song148           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song149           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song150           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song151           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song152           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song153           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song154           -R0 -G7 -P20 -V86)
set(MID2AGB_FLAGS_song155           -R0 -G7 -P20 -V74)
set(MID2AGB_FLAGS_song156           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song157           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song158           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song159           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song160           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song161           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song162           -R0 -G5 -P20 -V114)
set(MID2AGB_FLAGS_song163           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song164           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song166           -R0 -G5 -P20 -V89)
set(MID2AGB_FLAGS_song167           -R0 -G0 -P20 -V127)
set(MID2AGB_FLAGS_song168           -R0 -G0 -P20 -V100)
set(MID2AGB_FLAGS_song169           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song170           -R0 -G0 -P20 -V120)
set(MID2AGB_FLAGS_song171           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song172           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song173           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song174           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song175           -R0 -G0 -P20 -V88)
set(MID2AGB_FLAGS_song176           -R0 -G0 -P20 -V88)
set(MID2AGB_FLAGS_song177           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song178           -R0 -G0 -P20 -V55)
set(MID2AGB_FLAGS_song179           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song180           -R0 -G5 -P20 -V90)
set(MID2AGB_FLAGS_song181           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song182           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song183           -R0 -G5 -P20 -V90)
set(MID2AGB_FLAGS_song184           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song185           -R0 -G0 -P20 -V88)
set(MID2AGB_FLAGS_song188           -R0 -G5 -P20 -V90)
set(MID2AGB_FLAGS_song189           -R0 -G5 -P20 -V90)
set(MID2AGB_FLAGS_song190           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song191           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song192           -R0 -G5 -P20 -V90)
set(MID2AGB_FLAGS_song193           -R0 -G5 -P20 -V90)
set(MID2AGB_FLAGS_song194           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song195           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song196           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song198           -R0 -G5 -P20 -V90)
set(MID2AGB_FLAGS_song199           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song200           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song201           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song202           -R0 -G4 -P20 -V100)
set(MID2AGB_FLAGS_song203           -R0 -G0 -P20 -V88)
set(MID2AGB_FLAGS_song204           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song205           -R0 -G0 -P20 -V90)
set(MID2AGB_FLAGS_song206           -R0 -G5 -P20 -V85)
set(MID2AGB_FLAGS_song207           -R0 -G5 -P20 -V85)
set(MID2AGB_FLAGS_song208           -R0 -G5 -P20 -V85)
set(MID2AGB_FLAGS_song209           -R0 -G5 -P20 -V90)
set(MID2AGB_FLAGS_song210           -R0 -G5 -P20 -V90)
set(MID2AGB_FLAGS_song211           -R0 -G5 -P20 -V90)
set(MID2AGB_FLAGS_song212           -R0 -G5 -P20 -V72)
set(MID2AGB_FLAGS_song213           -R0 -G5 -P20 -V72)
set(MID2AGB_FLAGS_song214           -R0 -G5 -P20 -V72)
set(MID2AGB_FLAGS_song215           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song216           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song217           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song218           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song219           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song220           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song221           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song222           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song223           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song224           -R0 -G5 -P20 -V120)
set(MID2AGB_FLAGS_song301           -R0 -G7 -V77)
set(MID2AGB_FLAGS_song302           -R0 -G7 -V77)
set(MID2AGB_FLAGS_song303           -R0 -G7 -V77)
set(MID2AGB_FLAGS_song304           -R0 -G7 -V105)
set(MID2AGB_FLAGS_song305           -R0 -G7 -V110)
set(MID2AGB_FLAGS_song306           -R0 -G7 -V110)
set(MID2AGB_FLAGS_song307           -R0 -G0 -V120)

file(GLOB MID_FILES "${SA1_DIR}/sound/sa1/songs/midi/*.mid")
foreach(MID ${MID_FILES})
    string(REGEX REPLACE "\\.mid$" ".s" MID_S "${MID}")
    if("${MID}" IS_NEWER_THAN "${MID_S}")
        # Look up per-song flags by filename (without extension)
        get_filename_component(MID_NAME "${MID}" NAME_WE)
        set(SONG_FLAGS "")
        if(DEFINED MID2AGB_FLAGS_${MID_NAME})
            set(SONG_FLAGS ${MID2AGB_FLAGS_${MID_NAME}})
        else()
            message(WARNING "No mid2agb flags defined for ${MID_NAME}, using defaults")
        endif()
        execute_process(
            COMMAND "${MID2AGB}" "${MID}" "${MID_S}" ${SONG_FLAGS}
            WORKING_DIRECTORY "${SA1_DIR}"
            RESULT_VARIABLE RC
        )
        if(NOT RC EQUAL 0)
            message(WARNING "mid2agb failed on ${MID} (exit ${RC})")
        endif()
    endif()
endforeach()

# ── Done: touch stamp file ────────────────────────────────────────────────
file(WRITE "${STAMP_FILE}" "Assets generated at ${CMAKE_CURRENT_LIST_FILE}\n")
message(STATUS "Asset generation complete.")
