if (NOT EXISTS "/home/awaszczak/git/sa2/sa1/android/app/.cxx/RelWithDebInfo/2n4s4e5g/arm64-v8a/install_manifest.txt")
    message(FATAL_ERROR "Cannot find install manifest: \"/home/awaszczak/git/sa2/sa1/android/app/.cxx/RelWithDebInfo/2n4s4e5g/arm64-v8a/install_manifest.txt\"")
endif(NOT EXISTS "/home/awaszczak/git/sa2/sa1/android/app/.cxx/RelWithDebInfo/2n4s4e5g/arm64-v8a/install_manifest.txt")

file(READ "/home/awaszczak/git/sa2/sa1/android/app/.cxx/RelWithDebInfo/2n4s4e5g/arm64-v8a/install_manifest.txt" files)
string(REGEX REPLACE "\n" ";" files "${files}")
foreach (file ${files})
    message(STATUS "Uninstalling \"$ENV{DESTDIR}${file}\"")
    execute_process(
        COMMAND /home/awaszczak/Android/Sdk/cmake/3.22.1/bin/cmake -E remove "$ENV{DESTDIR}${file}"
        OUTPUT_VARIABLE rm_out
        RESULT_VARIABLE rm_retval
    )
    if(NOT ${rm_retval} EQUAL 0)
        message(FATAL_ERROR "Problem when removing \"$ENV{DESTDIR}${file}\"")
    endif (NOT ${rm_retval} EQUAL 0)
endforeach(file)

