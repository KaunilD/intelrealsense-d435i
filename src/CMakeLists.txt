cmake_minimum_required (VERSION 3.5)

find_package( OpenCV REQUIRED )
find_package( CUDA REQUIRED )

# Setup librealsense2
include( ${CMAKE_SOURCE_DIR}"/CMake/find_realsense2.cmake" )
find_realsense2()
message("-- librealsense DIR: " ${LRS_DIR})
message("-- librealsense INCLUDE_DIR: " ${LRS_INCLUDE_DIR})
message("-- librealsense LIB: " ${LRS_LIBS})

# lrs sources/examples
add_executable(${PROJECT_NAME} "hello_lrs.cpp")

# Link libs to the target
target_link_libraries(${PROJECT_NAME} ${LRS_LIBS})

add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD 
	 COMMAND ${CMAKE_COMMAND} -E copy
		 "${LRS_DIR}/lib/realsense2.dll"
		 "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/"
     )