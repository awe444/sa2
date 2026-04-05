cmake_minimum_required(VERSION 3.13)
project(sa1 C CXX)

# ── Options ──────────────────────────────────────────────────────────────────
option(SA1_ENABLE_AUDIO "Enable audio support" ON)

set(SA1_GAME_REGION "EUROPE" CACHE STRING "Game region (EUROPE or USA)")
set(SA2_ROOT "${CMAKE_CURRENT_SOURCE_DIR}/.." CACHE PATH "Path to the SA2 root directory")

# ── Host tool: preproc ───────────────────────────────────────────────────────
# The preproc tool converts INCBIN_* macros into C array initialisers by
# reading binary asset files at build time.  It must run on the *host*, so
# when cross-compiling (e.g. for Android) we build it with the host C++
# compiler, or the caller may supply a pre-built binary via
# -DPREPROC_EXECUTABLE=<path>.

set(PREPROC_TOOL_DIR "${SA2_ROOT}/tools/preproc")

set(PREPROC_SRCS
    ${PREPROC_TOOL_DIR}/asm_file.cpp
    ${PREPROC_TOOL_DIR}/c_file.cpp
    ${PREPROC_TOOL_DIR}/charmap.cpp
    ${PREPROC_TOOL_DIR}/preproc.cpp
    ${PREPROC_TOOL_DIR}/string_parser.cpp
    ${PREPROC_TOOL_DIR}/utf8.cpp
    ${PREPROC_TOOL_DIR}/ext/gbagfx/jasc_pal.cpp
)

if(PREPROC_EXECUTABLE)
    set(PREPROC "${PREPROC_EXECUTABLE}")
    set(PREPROC_DEP "")
    message(STATUS "Using supplied preproc: ${PREPROC}")
elseif(CMAKE_CROSSCOMPILING)
    # preproc must run on the host during the build.  When cross-compiling
    # (e.g. for Android) we cannot use the target toolchain, so compile it
    # directly with the host C++ compiler.
    # NO_CMAKE_PATH prevents find_program from searching in
    # CMAKE_PROGRAM_PATH, which the Android NDK toolchain file populates
    # with its own bin/ directory — that would find the NDK's clang++
    # instead of the host system's compiler.
    find_program(HOST_CXX NAMES c++ g++ clang++
        NO_CMAKE_PATH
        REQUIRED
    )
    set(PREPROC_HOST_BIN "${CMAKE_CURRENT_BINARY_DIR}/preproc_host")
    add_custom_command(
        OUTPUT "${PREPROC_HOST_BIN}"
        COMMAND "${HOST_CXX}" -std=c++11 -O2
            "-I${PREPROC_TOOL_DIR}/ext/gbagfx"
            ${PREPROC_SRCS}
            -o "${PREPROC_HOST_BIN}"
        DEPENDS ${PREPROC_SRCS}
        COMMENT "Building host preproc tool"
        VERBATIM
    )
    set(PREPROC "${PREPROC_HOST_BIN}")
    set(PREPROC_DEP "${PREPROC_HOST_BIN}")
else()
    add_executable(preproc ${PREPROC_SRCS})
    target_include_directories(preproc PRIVATE ${PREPROC_TOOL_DIR}/ext/gbagfx)
    target_compile_features(preproc PRIVATE cxx_std_11)
    set(PREPROC "$<TARGET_FILE:preproc>")
    set(PREPROC_DEP preproc)
endif()

# ── Binary asset generation ──────────────────────────────────────────────────
# The preproc tool reads binary files referenced by INCBIN_* macros.  These
# binary assets (.gbapal, .4bpp, .bin.rl) are generated from source files
# (.pal, .png, .csv) using the gbagfx and entity_positions host tools.
# We invoke a CMake script at build time that builds those tools (via their
# Makefiles) and converts every source asset in the tree.

# mid2agb (C++) needs a host C++ compiler.  When not cross-compiling,
# CMAKE_CXX_COMPILER is already the host compiler; when cross-compiling,
# HOST_CXX was discovered above.
if(NOT HOST_CXX)
    set(HOST_CXX "${CMAKE_CXX_COMPILER}")
endif()

set(ASSET_STAMP "${CMAKE_CURRENT_BINARY_DIR}/assets.stamp")
add_custom_command(
    OUTPUT "${ASSET_STAMP}"
    COMMAND ${CMAKE_COMMAND}
        -DSA1_DIR=${CMAKE_CURRENT_SOURCE_DIR}
        -DSA2_ROOT=${SA2_ROOT}
        -DHOST_CXX=${HOST_CXX}
        -DSTAMP_FILE=${ASSET_STAMP}
        -P "${CMAKE_CURRENT_SOURCE_DIR}/cmake/generate_assets.cmake"
    COMMENT "Generating binary assets (gbapal, 4bpp, entity bins)"
    VERBATIM
)

# ── preproc helper function ──────────────────────────────────────────────────
# sa1_preprocess(<output_list_var>  SOURCES src1.c src2.c ...)
#
# For each source file, run:
#     cc -E <flags> src.c -o src.i
#     preproc src.i sdl "" > src.pp.c
#
# The preprocessed .pp.c files are collected in <output_list_var> and should
# be compiled *instead of* the original sources.

function(sa1_preprocess OUTPUT_VAR)
    cmake_parse_arguments(PP "" "" "SOURCES;INCLUDE_DIRS;SYSTEM_INCLUDE_DIRS;DEFINITIONS" ${ARGN})

    # Build the -I and -D flags that the C preprocessor step needs
    set(CPP_FLAGS "")
    # When cross-compiling (e.g. Android NDK), the -E step must target the
    # same architecture as the final compile.  CMake stores the target triple
    # and sysroot separately from CMAKE_C_FLAGS, so we must pass them
    # explicitly.  Without --target the NDK clang defaults to the host arch
    # (x86_64), defines __MMX__/__SSE__, and SDL_cpuinfo.h expands x86
    # intrinsics that then fail to compile on ARM64.
    if(CMAKE_C_COMPILER_TARGET)
        list(APPEND CPP_FLAGS "--target=${CMAKE_C_COMPILER_TARGET}")
    endif()
    if(CMAKE_SYSROOT)
        list(APPEND CPP_FLAGS "--sysroot=${CMAKE_SYSROOT}")
    endif()
    if(CMAKE_C_FLAGS)
        separate_arguments(_c_flags NATIVE_COMMAND "${CMAKE_C_FLAGS}")
        list(APPEND CPP_FLAGS ${_c_flags})
    endif()
    foreach(dir ${PP_INCLUDE_DIRS})
        list(APPEND CPP_FLAGS "-iquote" "${dir}")
    endforeach()
    # System include dirs use -I so that #include <...> (angle brackets) works
    foreach(dir ${PP_SYSTEM_INCLUDE_DIRS})
        list(APPEND CPP_FLAGS "-I" "${dir}")
    endforeach()
    foreach(def ${PP_DEFINITIONS})
        list(APPEND CPP_FLAGS "-D" "${def}")
    endforeach()

    set(PP_OUTPUTS "")
    foreach(SRC ${PP_SOURCES})
        # Derive a stable output path inside the build tree
        file(RELATIVE_PATH REL "${CMAKE_CURRENT_SOURCE_DIR}" "${SRC}")
        # Sources outside sa1/ (SA2 shared) get a prefix
        if(REL MATCHES "^\\.\\.")
            file(RELATIVE_PATH REL "${SA2_ROOT}" "${SRC}")
            set(REL "sa2/${REL}")
        endif()
        set(PP_I  "${CMAKE_CURRENT_BINARY_DIR}/pp/${REL}.i")
        set(PP_C  "${CMAKE_CURRENT_BINARY_DIR}/pp/${REL}")

        get_filename_component(PP_I_DIR "${PP_I}" DIRECTORY)
        get_filename_component(PP_C_DIR "${PP_C}" DIRECTORY)

        add_custom_command(
            OUTPUT "${PP_C}"
            COMMAND ${CMAKE_COMMAND} -E make_directory "${PP_I_DIR}"
            COMMAND ${CMAKE_C_COMPILER} -E ${CPP_FLAGS} "${SRC}" -o "${PP_I}"
            COMMAND ${CMAKE_COMMAND} -E make_directory "${PP_C_DIR}"
            COMMAND ${CMAKE_COMMAND}
                -DPREPROC_EXE=${PREPROC}
                -DPP_INPUT=${PP_I}
                -DPP_OUTPUT=${PP_C}
                -DWORK_DIR=${CMAKE_CURRENT_SOURCE_DIR}
                -P "${CMAKE_CURRENT_SOURCE_DIR}/cmake/run_preproc.cmake"
            DEPENDS "${SRC}" ${PREPROC_DEP} "${ASSET_STAMP}"
            WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}"
            COMMENT "preproc ${REL}"
            VERBATIM
        )
        # Tell the compiler the output is already preprocessed
        set_source_files_properties("${PP_C}" PROPERTIES LANGUAGE C)
        list(APPEND PP_OUTPUTS "${PP_C}")
    endforeach()

    set(${OUTPUT_VAR} ${PP_OUTPUTS} PARENT_SCOPE)
endfunction()

# ── Locate SDL2 ──────────────────────────────────────────────────────────────
if(NOT ANDROID)
    find_package(PkgConfig REQUIRED)
    pkg_check_modules(SDL2 REQUIRED sdl2)
endif()

# ── SA1 sources (same set as the Makefile "sdl" platform) ────────────────────
file(GLOB_RECURSE SA1_GAME_SRCS
    "${CMAKE_CURRENT_SOURCE_DIR}/src/game/*.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/src/data/*.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/src/lib/*.c"
)

set(SA1_PLATFORM_SRCS
    src/platform/pret_sdl/sdl2.c
    src/platform/shared/common.c
    src/platform/shared/compression.c
    src/platform/shared/dma.c
    src/platform/shared/input.c
    src/platform/shared/sio_stub.c
    src/platform/shared/stub.c
    src/platform/shared/audio/cgb_audio.c
    src/platform/shared/audio/m4a_sound_mixer.c
    src/platform/ext/gbagfx/lz.c
    src/platform/ext/gbagfx/rl.c
)
list(TRANSFORM SA1_PLATFORM_SRCS PREPEND "${CMAKE_CURRENT_SOURCE_DIR}/")

# SA2 shared C sources that SA1 depends on (mirrors SA2_C_FILES in Makefile)
set(SA2_SHARED_SRCS
    src/lib/m4a/m4a.c
    src/lib/m4a/m4a_tables.c
    src/lib/agb_flash/agb_flash.c
    src/lib/agb_flash/agb_flash_at_512k.c
    src/lib/agb_flash/agb_flash_le_512k.c
    src/lib/agb_flash/agb_flash_mx_512k.c
    src/multi_sio.c
    src/sio32_multi_load.c
    src/multi_boot.c
    src/core.c
    src/main.c
    src/task.c
    src/sprite.c
    src/trig.c
    src/malloc_vram.c
    src/malloc_ewram.c
    src/bg_triangles.c
    src/input_recorder.c
    src/background.c
    src/game/globals.c
)
list(TRANSFORM SA2_SHARED_SRCS PREPEND "${SA2_ROOT}/")

# ── Common compile definitions and include directories ───────────────────────
set(SA1_INCLUDE_DIRS
    "${CMAKE_CURRENT_SOURCE_DIR}/include"
    "${SA2_ROOT}/include"
)

set(SA1_DEFINITIONS
    PLATFORM_GBA=0
    PLATFORM_SDL=1
    PLATFORM_WIN32=0
    CPU_ARCH_X86=0
    CPU_ARCH_ARM=0
    PORTABLE=1
    NON_MATCHING=1
    ENABLE_DECOMP_CREDITS=1
    DEBUG=0
    TITLE_BAR=sa1.sdl
    ${SA1_GAME_REGION}
)

# ── Preprocess all sources through preproc ────────────────────────────────────
# The preproc tool converts INCBIN_* macros (which can appear in headers
# included by any source) into C array initialisers.  The Makefile builds
# pipe every .c through preproc; we do the same here.

# SDL2 headers are included with angle brackets (#include <SDL.h>) so we need
# -I flags (not -iquote) for the preprocessing step.
if(ANDROID AND TARGET SDL2)
    get_target_property(_sdl2_source_dir SDL2 SOURCE_DIR)
    get_target_property(_sdl2_binary_dir SDL2 BINARY_DIR)
    set(SDL2_PP_INCLUDE_DIRS "")
    if(_sdl2_source_dir)
        list(APPEND SDL2_PP_INCLUDE_DIRS "${_sdl2_source_dir}/include")
    endif()
    if(_sdl2_binary_dir)
        list(APPEND SDL2_PP_INCLUDE_DIRS
            "${_sdl2_binary_dir}/include"
            "${_sdl2_binary_dir}/include/SDL2"
        )
    endif()
elseif(SDL2_INCLUDE_DIRS)
    set(SDL2_PP_INCLUDE_DIRS ${SDL2_INCLUDE_DIRS})
else()
    set(SDL2_PP_INCLUDE_DIRS "")
endif()

sa1_preprocess(PP_SRCS
    SOURCES            ${SA1_GAME_SRCS} ${SA1_PLATFORM_SRCS} ${SA2_SHARED_SRCS}
    INCLUDE_DIRS       ${SA1_INCLUDE_DIRS}
    SYSTEM_INCLUDE_DIRS ${SDL2_PP_INCLUDE_DIRS}
    DEFINITIONS        ${SA1_DEFINITIONS}
)

# ── Assembly data files ──────────────────────────────────────────────────────
# The Makefile compiles sa1/data/*.s assembly files that define data symbols
# (gObjTiles_4bpp, gObjTiles_8bpp, gUnknown_*, sLangScreenReturnProcs, etc.)
# referenced by the C code.  The pipeline matches the Makefile:
#   preproc file.s sdl ""  →  expand .include / .string / .braille
#   cc -x assembler-with-cpp -c  →  preprocess #ifdef macros, then assemble

file(GLOB SA1_DATA_ASM_SRCS CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/data/sa1/*.s")

# Song assembly files (hand-written .s files in sound/songs/)
file(GLOB SA1_SONG_ASM_SRCS CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/sound/sa1/songs/*.s")

# MIDI songs: mid2agb converts .mid → .s during asset generation.
# Derive the expected .s paths from the .mid files so CMake knows about them
# at configure time, even though they're generated at build time.
file(GLOB SA1_MID_FILES CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/sound/sa1/songs/midi/*.mid")
set(SA1_MID_ASM_SRCS "")
foreach(MID ${SA1_MID_FILES})
    string(REGEX REPLACE "\\.mid$" ".s" MID_S "${MID}")
    list(APPEND SA1_MID_ASM_SRCS "${MID_S}")
endforeach()

# Combine all assembly sources
set(SA1_ALL_ASM_SRCS ${SA1_DATA_ASM_SRCS} ${SA1_SONG_ASM_SRCS} ${SA1_MID_ASM_SRCS})

# Definitions the assembly macros need (portable.inc checks CPU_ARCH_X86).
# Pipe-delimited because CMake lists (semicolons) are lost when passed via -D;
# the values (KEY=0/1) never contain pipes.
string(REPLACE ";" "|" _asm_defs "${SA1_DEFINITIONS}")

# When building a shared library (Android), the assembly .o files must be
# position-independent.  CMake adds -fPIC automatically for C targets but
# not for objects produced by custom commands, so we pass it explicitly.
set(_asm_cc_flags "${CMAKE_C_FLAGS}")
if(ANDROID)
    string(APPEND _asm_cc_flags " -fPIC")
endif()

set(ASM_OBJS "")
foreach(ASM_SRC ${SA1_ALL_ASM_SRCS})
    file(RELATIVE_PATH REL "${CMAKE_CURRENT_SOURCE_DIR}" "${ASM_SRC}")
    set(ASM_OBJ     "${CMAKE_CURRENT_BINARY_DIR}/asm/${REL}.o")
    set(ASM_PREPROC "${CMAKE_CURRENT_BINARY_DIR}/asm/${REL}.S")
    get_filename_component(ASM_OBJ_DIR "${ASM_OBJ}" DIRECTORY)

    # For MIDI-derived .s files (generated at build time by mid2agb), we can't
    # list them in DEPENDS because they don't exist at configure time and Ninja
    # has no rule to produce them individually.  The ASSET_STAMP dependency
    # already ensures asset generation (including mid2agb) runs first.
    if(ASM_SRC IN_LIST SA1_MID_ASM_SRCS)
        set(_src_dep "")
    else()
        set(_src_dep "${ASM_SRC}")
    endif()

    add_custom_command(
        OUTPUT "${ASM_OBJ}"
        COMMAND ${CMAKE_COMMAND} -E make_directory "${ASM_OBJ_DIR}"
        COMMAND ${CMAKE_COMMAND}
            -DPREPROC_EXE=${PREPROC}
            -DASM_INPUT=${ASM_SRC}
            -DASM_PREPROC=${ASM_PREPROC}
            -DASM_OUTPUT=${ASM_OBJ}
            -DWORK_DIR=${CMAKE_CURRENT_SOURCE_DIR}
            -DCC=${CMAKE_C_COMPILER}
            -DCC_TARGET=${CMAKE_C_COMPILER_TARGET}
            -DCC_SYSROOT=${CMAKE_SYSROOT}
            "-DCC_FLAGS=${_asm_cc_flags}"
            "-DDEFS=${_asm_defs}"
            -P "${CMAKE_CURRENT_SOURCE_DIR}/cmake/run_asm.cmake"
        DEPENDS ${_src_dep} ${PREPROC_DEP} "${ASSET_STAMP}"
        WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}"
        COMMENT "asm ${REL}"
        VERBATIM
    )
    list(APPEND ASM_OBJS "${ASM_OBJ}")
endforeach()

# Mark the .o files as external pre-compiled objects
set_source_files_properties(${ASM_OBJS} PROPERTIES EXTERNAL_OBJECT TRUE GENERATED TRUE)

set(ALL_SRCS ${PP_SRCS} ${ASM_OBJS})

# ── Target ───────────────────────────────────────────────────────────────────
if(ANDROID)
    add_library(main SHARED ${ALL_SRCS})
    set(SA1_TARGET main)
else()
    add_executable(sa1_sdl ${ALL_SRCS})
    set(SA1_TARGET sa1_sdl)
endif()

# ── Include paths ────────────────────────────────────────────────────────────
target_include_directories(${SA1_TARGET} PRIVATE ${SA1_INCLUDE_DIRS})

# ── Preprocessor defines ────────────────────────────────────────────────────
target_compile_definitions(${SA1_TARGET} PRIVATE ${SA1_DEFINITIONS})

if(NOT ANDROID)
    target_compile_definitions(${SA1_TARGET} PRIVATE SDL_MAIN_HANDLED)
endif()

# ── Compiler flags ───────────────────────────────────────────────────────────
string(TOUPPER "${CMAKE_BUILD_TYPE}" _BUILD_TYPE_UPPER)
if(_BUILD_TYPE_UPPER STREQUAL "DEBUG")
    set(SA1_OPT_FLAG -O0)
else()
    set(SA1_OPT_FLAG -O2)
endif()

target_compile_options(${SA1_TARGET} PRIVATE
    -Wimplicit
    -Wparentheses
    ${SA1_OPT_FLAG}
)

# Clang-specific warnings (GCC does not recognise these)
if(CMAKE_C_COMPILER_ID MATCHES "Clang")
    target_compile_options(${SA1_TARGET} PRIVATE
        -Wno-parentheses-equality
        -Wno-unused-value
    )
endif()

# ── Link SDL2 ────────────────────────────────────────────────────────────────
if(ANDROID)
    target_link_libraries(${SA1_TARGET} PRIVATE
        SDL2
        SDL2main
        GLESv1_CM
        GLESv2
        log
        android
    )
else()
    target_include_directories(${SA1_TARGET} PRIVATE ${SDL2_INCLUDE_DIRS})
    target_link_libraries(${SA1_TARGET} PRIVATE ${SDL2_LIBRARIES})
endif()

set_target_properties(${SA1_TARGET} PROPERTIES C_STANDARD 11)
