#  minimum required cmake version: 3.1.0
cmake_minimum_required(VERSION 3.1.0)

# Build librealsense
message("external: Building librealsense")
set( LIBREALSENSE_SOURCE_DIR ${CMAKE_SOURCE_DIR}/external/librealsense/)
message("external: $LIBREALSENSE_SOURCE_DIR " ${LIBREALSENSE_SOURCE_DIR})
add_subdirectory("librealsense")
