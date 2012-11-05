cmake_minimum_required (VERSION 2.8)
Project(CAF_Play Fortran)

set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake_modules ${CMAKE_MODULE_PATH})
# The macro below forces the build directory to be different from source directory:
include(MacroEnsureOutOfSourceBuild)

macro_ensure_out_of_source_build("${PROJECT_NAME} requires an out of source build.")
include_directories(${PROJECT_SOURCE_DIR})
include_directories(${PROJECT_BINARY_DIR})

add_subdirectory(src)
add_subdirectory(test)
