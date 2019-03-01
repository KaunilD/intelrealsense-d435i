#  minimum required cmake version: 3.1.0
cmake_minimum_required(VERSION 3.1.0)

project(lrs)

set( CMAKE_CXX_STANDARD 11 )
set( CMAKE_CUDA_STANDARD 11 )
set( CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin )

option( COMPILE_GLFW "Compile GLFW" OFF )

if (UNIX)
  add_subdirectory("${CMAKE_SOURCE_DIR}/third-party/glfw3/LINUX/")
elseif(WIN32)
  add_subdirectory("${CMAKE_SOURCE_DIR}/third-party/glfw3/Win32/")
endif()

add_subdirectory("src")
