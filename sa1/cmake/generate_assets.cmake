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
        set(ENT_FLAGS -entities ENEMIES -header "${SA1_DIR}/include/constants/enemies.h")
    elseif(CSV_NAME STREQUAL "itemboxes")
        set(ENT_FLAGS -entities ITEMS -header "${SA1_DIR}/include/constants/items.h")
    elseif(CSV_NAME STREQUAL "interactables")
        set(ENT_FLAGS -entities INTERACTABLES -header "${SA1_DIR}/include/constants/interactables.h")
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
file(GLOB MID_FILES "${SA1_DIR}/sound/sa1/songs/midi/*.mid")
foreach(MID ${MID_FILES})
    string(REGEX REPLACE "\\.mid$" ".s" MID_S "${MID}")
    if("${MID}" IS_NEWER_THAN "${MID_S}")
        execute_process(
            COMMAND "${MID2AGB}" "${MID}" "${MID_S}"
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
