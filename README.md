### Experiments with librealsense2

#### Windows Notes

1. Don't waste time installing and setting paths for GLFW3. Simply build the source alongwith the application.
2. target_include_directories and include_directories are both different :/
3. For setting up step 1. refer: https://www.glfw.org/docs/latest/build_guide.html section: Build with CMake and GFLW Source.
4. Merge external and third-party in future.


#### Linux Notes

1. Install librealsense2 using the instructions here: https://github.com/IntelRealSense/librealsense/blob/master/doc/distribution_linux.md  
2. GLFW and OpenGL will be installed using apt utility.
