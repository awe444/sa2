# run_asm.cmake — Build-time helper: preprocess and assemble a .s data file
#
# Pipeline (matches the Makefile):
#   preproc input.s sdl ""   →  intermediate .S  (expands .include / .string)
#   cc -x assembler-with-cpp →  .o               (handles #ifdef, assembles)
#
# Required -D variables:
#   PREPROC_EXE  – path to preproc host tool
#   ASM_INPUT    – input .s file path
#   ASM_PREPROC  – intermediate preprocessed .S file path
#   ASM_OUTPUT   – output .o file path
#   WORK_DIR     – working directory (sa1 source root)
#   CC           – C compiler path (e.g. NDK clang)
# Optional:
#   CC_TARGET    – target triple (e.g. aarch64-none-linux-android21)
#   CC_SYSROOT   – sysroot path
#   CC_FLAGS     – extra C compiler flags (space-separated string)
#   DEFS         – preprocessor defines (pipe-delimited, e.g. A=1|B=2)

# ── Step 1: preproc ──────────────────────────────────────────────────────────
execute_process(
    COMMAND "${PREPROC_EXE}" "${ASM_INPUT}" sdl ""
    OUTPUT_FILE "${ASM_PREPROC}"
    WORKING_DIRECTORY "${WORK_DIR}"
    RESULT_VARIABLE RC
)
if(NOT RC EQUAL 0)
    message(FATAL_ERROR "preproc failed (exit ${RC}) on ${ASM_INPUT}")
endif()

# ── Step 2: assemble ─────────────────────────────────────────────────────────
set(CMD "${CC}")
if(CC_TARGET)
    list(APPEND CMD "--target=${CC_TARGET}")
endif()
if(CC_SYSROOT)
    list(APPEND CMD "--sysroot=${CC_SYSROOT}")
endif()
if(CC_FLAGS)
    separate_arguments(_flags NATIVE_COMMAND "${CC_FLAGS}")
    list(APPEND CMD ${_flags})
endif()
if(DEFS)
    string(REPLACE "|" ";" _defs "${DEFS}")
    foreach(d ${_defs})
        list(APPEND CMD "-D${d}")
    endforeach()
endif()
list(APPEND CMD -x assembler-with-cpp -c "${ASM_PREPROC}" -o "${ASM_OUTPUT}")

execute_process(
    COMMAND ${CMD}
    WORKING_DIRECTORY "${WORK_DIR}"
    RESULT_VARIABLE RC
)
if(NOT RC EQUAL 0)
    message(FATAL_ERROR "Assembly failed (exit ${RC}) on ${ASM_PREPROC}")
endif()
