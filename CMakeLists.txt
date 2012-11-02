cmake_minimum_required (VERSION 2.8)
Project(CAF_Play)

# The macro below forces the build directory to be different from source directory:
include(MacroOutOfSourceBuild)

macro_ensure_out_of_source_build("${PROJECT_NAME} requires an out of source build.")

add_subdirectory(src)

