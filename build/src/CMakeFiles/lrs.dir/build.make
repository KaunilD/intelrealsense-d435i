# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dhruv/development/git/intelrealsense-d435i

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dhruv/development/git/intelrealsense-d435i/build

# Include any dependencies generated for this target.
include src/CMakeFiles/lrs.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/lrs.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/lrs.dir/flags.make

src/CMakeFiles/lrs.dir/rs-capture.cpp.o: src/CMakeFiles/lrs.dir/flags.make
src/CMakeFiles/lrs.dir/rs-capture.cpp.o: ../src/rs-capture.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dhruv/development/git/intelrealsense-d435i/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/lrs.dir/rs-capture.cpp.o"
	cd /home/dhruv/development/git/intelrealsense-d435i/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lrs.dir/rs-capture.cpp.o -c /home/dhruv/development/git/intelrealsense-d435i/src/rs-capture.cpp

src/CMakeFiles/lrs.dir/rs-capture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lrs.dir/rs-capture.cpp.i"
	cd /home/dhruv/development/git/intelrealsense-d435i/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dhruv/development/git/intelrealsense-d435i/src/rs-capture.cpp > CMakeFiles/lrs.dir/rs-capture.cpp.i

src/CMakeFiles/lrs.dir/rs-capture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lrs.dir/rs-capture.cpp.s"
	cd /home/dhruv/development/git/intelrealsense-d435i/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dhruv/development/git/intelrealsense-d435i/src/rs-capture.cpp -o CMakeFiles/lrs.dir/rs-capture.cpp.s

src/CMakeFiles/lrs.dir/rs-capture.cpp.o.requires:

.PHONY : src/CMakeFiles/lrs.dir/rs-capture.cpp.o.requires

src/CMakeFiles/lrs.dir/rs-capture.cpp.o.provides: src/CMakeFiles/lrs.dir/rs-capture.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/lrs.dir/build.make src/CMakeFiles/lrs.dir/rs-capture.cpp.o.provides.build
.PHONY : src/CMakeFiles/lrs.dir/rs-capture.cpp.o.provides

src/CMakeFiles/lrs.dir/rs-capture.cpp.o.provides.build: src/CMakeFiles/lrs.dir/rs-capture.cpp.o


# Object files for target lrs
lrs_OBJECTS = \
"CMakeFiles/lrs.dir/rs-capture.cpp.o"

# External object files for target lrs
lrs_EXTERNAL_OBJECTS =

bin/lrs: src/CMakeFiles/lrs.dir/rs-capture.cpp.o
bin/lrs: src/CMakeFiles/lrs.dir/build.make
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_face.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_text.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_video.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.3.2.0
bin/lrs: /usr/lib/x86_64-linux-gnu/libopencv_core.so.3.2.0
bin/lrs: src/CMakeFiles/lrs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dhruv/development/git/intelrealsense-d435i/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/lrs"
	cd /home/dhruv/development/git/intelrealsense-d435i/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lrs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/lrs.dir/build: bin/lrs

.PHONY : src/CMakeFiles/lrs.dir/build

src/CMakeFiles/lrs.dir/requires: src/CMakeFiles/lrs.dir/rs-capture.cpp.o.requires

.PHONY : src/CMakeFiles/lrs.dir/requires

src/CMakeFiles/lrs.dir/clean:
	cd /home/dhruv/development/git/intelrealsense-d435i/build/src && $(CMAKE_COMMAND) -P CMakeFiles/lrs.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/lrs.dir/clean

src/CMakeFiles/lrs.dir/depend:
	cd /home/dhruv/development/git/intelrealsense-d435i/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dhruv/development/git/intelrealsense-d435i /home/dhruv/development/git/intelrealsense-d435i/src /home/dhruv/development/git/intelrealsense-d435i/build /home/dhruv/development/git/intelrealsense-d435i/build/src /home/dhruv/development/git/intelrealsense-d435i/build/src/CMakeFiles/lrs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/lrs.dir/depend

