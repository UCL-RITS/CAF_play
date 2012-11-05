cmake_minimum_required (VERSION 2.8)
Project(CAF_Play Fortran)

set(CMAKE_Fortran_FLAGS --std=f2003)
set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake_modules ${CMAKE_MODULE_PATH})
# The macro below forces the build directory to be different from source directory:
include(MacroEnsureOutOfSourceBuild)

macro_ensure_out_of_source_build("${PROJECT_NAME} requires an out of source build.")
include_directories(${PROJECT_SOURCE_DIR})
include_directories(${PROJECT_BINARY_DIR})

include_directories(${PROJECT_BINARY_DIR}/src)
add_subdirectory(src)
add_executable(gillie src/gillie_main.f90)
target_link_libraries(gillie gillie_modules)

add_subdirectory(test)
include_directories(${PROJECT_BINARY_DIR}/test)
add_executable(gillie_test test/test_main.f90)
target_link_libraries(gillie_test gillie_modules test_modules)