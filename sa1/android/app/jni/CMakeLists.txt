# JNI CMake wrapper for the Android build.
# This file adds SDL2 as a subdirectory and then includes the main SA1 CMakeLists.txt.
#
# Before building, place (or symlink) the SDL2 source tree at:
#   sa1/android/app/jni/SDL2/
#
# For example:
#   cd sa1/android/app/jni
#   wget https://github.com/libsdl-org/SDL/releases/download/release-2.30.3/SDL2-2.30.3.tar.gz
#   tar xf SDL2-2.30.3.tar.gz
#   mv SDL2-2.30.3 SDL2

cmake_minimum_required(VERSION 3.13)
project(sa1_android C CXX)

# Build SDL2 from source
add_subdirectory(SDL2)

# Build SA1 (the main CMakeLists.txt detects ANDROID and builds a shared lib)
add_subdirectory("${CMAKE_CURRENT_SOURCE_DIR}/../../../" "${CMAKE_CURRENT_BINARY_DIR}/sa1")
