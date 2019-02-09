#  minimum required cmake version: 3.1.0
cmake_minimum_required(VERSION 3.1.0)

project(self_driving_car)

set( CMAKE_CXX_STANDARD 11 )
set( CMAKE_CUDA_STANDARD 11 )
set( CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin )

add_subdirectory("src")
