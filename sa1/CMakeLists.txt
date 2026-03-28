cmake_minimum_required(VERSION 3.13)
project(sa1 C CXX)

# ── Options ──────────────────────────────────────────────────────────────────
option(SA1_ENABLE_AUDIO "Enable audio support" ON)

set(SA1_GAME_REGION "EUROPE" CACHE STRING "Game region (EUROPE or USA)")
set(SA2_ROOT "${CMAKE_CURRENT_SOURCE_DIR}/.." CACHE PATH "Path to the SA2 root directory")

# ── Host tool: preproc ───────────────────────────────────────────────────────
# The preproc tool converts INCBIN_* macros into C array initialisers by
# reading binary asset files at build time.  It must run on the *host*, so
# when cross-compiling (e.g. for Android) we allow the caller to supply a
# pre-built binary via -DPREPROC_EXECUTABLE=<path>.

set(PREPROC_TOOL_DIR "${SA2_ROOT}/tools/preproc")

if(PREPROC_EXECUTABLE)
    set(PREPROC "${PREPROC_EXECUTABLE}")
    message(STATUS "Using supplied preproc: ${PREPROC}")
else()
    # Build preproc from source for the host (only works in non-cross builds)
    set(PREPROC_SRCS
        ${PREPROC_TOOL_DIR}/asm_file.cpp
        ${PREPROC_TOOL_DIR}/c_file.cpp
        ${PREPROC_TOOL_DIR}/charmap.cpp
        ${PREPROC_TOOL_DIR}/preproc.cpp
        ${PREPROC_TOOL_DIR}/string_parser.cpp
        ${PREPROC_TOOL_DIR}/utf8.cpp
        ${PREPROC_TOOL_DIR}/ext/gbagfx/jasc_pal.cpp
    )

    add_executable(preproc ${PREPROC_SRCS})
    target_include_directories(preproc PRIVATE ${PREPROC_TOOL_DIR}/ext/gbagfx)
    target_compile_features(preproc PRIVATE cxx_std_11)
    set(PREPROC "$<TARGET_FILE:preproc>")
endif()

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
    cmake_parse_arguments(PP "" "" "SOURCES;INCLUDE_DIRS;DEFINITIONS" ${ARGN})

    # Build the -I and -D flags that the C preprocessor step needs
    set(CPP_FLAGS "")
    foreach(dir ${PP_INCLUDE_DIRS})
        list(APPEND CPP_FLAGS "-iquote" "${dir}")
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
            COMMAND ${PREPROC} "${PP_I}" sdl "" > "${PP_C}"
            DEPENDS "${SRC}"
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

sa1_preprocess(PP_SRCS
    SOURCES       ${SA1_GAME_SRCS} ${SA1_PLATFORM_SRCS} ${SA2_SHARED_SRCS}
    INCLUDE_DIRS  ${SA1_INCLUDE_DIRS}
    DEFINITIONS   ${SA1_DEFINITIONS}
)

set(ALL_SRCS ${PP_SRCS})

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

if(ANDROID)
    target_compile_definitions(${SA1_TARGET} PRIVATE SDL_MAIN_HANDLED)
endif()

# ── Compiler flags ───────────────────────────────────────────────────────────
target_compile_options(${SA1_TARGET} PRIVATE
    -Wimplicit
    -Wparentheses
    -O2
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
