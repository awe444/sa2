# run_preproc.cmake — portable wrapper that captures preproc stdout to a file.
# Expected variables (set via -D on the cmake command line):
#   PREPROC_EXE  – path to the preproc executable
#   PP_INPUT     – the .i file to process
#   PP_OUTPUT    – destination file for preproc's stdout
#   WORK_DIR     – working directory for the command

execute_process(
    COMMAND "${PREPROC_EXE}" "${PP_INPUT}" sdl ""
    WORKING_DIRECTORY "${WORK_DIR}"
    OUTPUT_FILE "${PP_OUTPUT}"
    RESULT_VARIABLE RC
)

if(NOT RC EQUAL 0)
    message(FATAL_ERROR "preproc failed (exit ${RC}) on ${PP_INPUT}")
endif()
