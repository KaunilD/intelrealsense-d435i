macro(find_realsense2)

	message("External: Scanning librealsense")

	if( WIN32 )
		set(LRS_DIR "${CMAKE_SOURCE_DIR}/external/librealsense2/")
		set(LRS_INCLUDE_DIR "${LRS_DIR}/include/")
		include_directories(${LRS_INCLUDE_DIR})
		set(LRS_LIBS "${LRS_DIR}/lib/realsense2.lib")
	elseif( LINUX )
		find_package( realsense2 REQUIRED )
	endif()

endmacro()
