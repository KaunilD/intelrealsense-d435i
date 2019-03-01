cmake_minimum_required (VERSION 3.5)
find_package( OpenCV REQUIRED )

# Temporarily removing CUDA dependency since Ubuntu is not setup for CUDA TOOLKIT.
# find_package( CUDA REQUIRED )

# include OpenCV
include_directories(${OpenCV_INCLUDE_DIRS})

# Setup librealsense2
include( ${CMAKE_SOURCE_DIR}/CMake/find_realsense2.cmake )
find_realsense2()

if (WIN32)
	message("-- librealsense DIR: " ${LRS_DIR})
	message("-- librealse	message("-- librealsense LIB: " ${LRS_LIBS})
					nse INCLUDE_DIR: " ${LRS_INCLUDE_DIR})
	message("-- librealsense LIB: " ${LRS_LIBS})
endif()

# Setup GLFW
if (COMPILE_GLFW)
	set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
	set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
	set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
endif()

# sources
add_executable(${PROJECT_NAME} "rs-capture.cpp")

if (COMPILE_GLFW AND OPENGL_FOUND)
	target_include_directories(${PROJECT_NAME} PUBLIC ${OPENGL_INCLUDE_DIR})
	target_link_libraries(${PROJECT_NAME} ${OPENGL_gl_LIBRARY} ${OPENGL_glu_LIBRARY} glfw)
endif()

# Only do this if using Win32
if (WIN32)
	target_link_libraries(${PROJECT_NAME} ${LRS_LIBS} ${OpenCV_LIBS})
	add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
		COMMAND ${CMAKE_COMMAND} -E copy
		"${LRS_DIR}/lib/realsense2.dll"
		"${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/"
	)
elseif(UNIX)
	target_link_libraries(${PROJECT_NAME} ${OpenCV_LIBS} realsense2)
endif()
