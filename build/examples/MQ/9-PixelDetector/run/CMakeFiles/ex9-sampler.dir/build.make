# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/turany/development/FairRoot

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/turany/development/FairRoot/build

# Include any dependencies generated for this target.
include examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/depend.make

# Include the progress variables for this target.
include examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/progress.make

# Include the compile flags for this target's objects.
include examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/flags.make

examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/runEx9Sampler.cxx.o: examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/flags.make
examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/runEx9Sampler.cxx.o: ../examples/MQ/9-PixelDetector/run/runEx9Sampler.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/turany/development/FairRoot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/runEx9Sampler.cxx.o"
	cd /Users/turany/development/FairRoot/build/examples/MQ/9-PixelDetector/run && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ex9-sampler.dir/runEx9Sampler.cxx.o -c /Users/turany/development/FairRoot/examples/MQ/9-PixelDetector/run/runEx9Sampler.cxx

examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/runEx9Sampler.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex9-sampler.dir/runEx9Sampler.cxx.i"
	cd /Users/turany/development/FairRoot/build/examples/MQ/9-PixelDetector/run && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/turany/development/FairRoot/examples/MQ/9-PixelDetector/run/runEx9Sampler.cxx > CMakeFiles/ex9-sampler.dir/runEx9Sampler.cxx.i

examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/runEx9Sampler.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex9-sampler.dir/runEx9Sampler.cxx.s"
	cd /Users/turany/development/FairRoot/build/examples/MQ/9-PixelDetector/run && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/turany/development/FairRoot/examples/MQ/9-PixelDetector/run/runEx9Sampler.cxx -o CMakeFiles/ex9-sampler.dir/runEx9Sampler.cxx.s

examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/runEx9Sampler.cxx.o.requires:

.PHONY : examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/runEx9Sampler.cxx.o.requires

examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/runEx9Sampler.cxx.o.provides: examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/runEx9Sampler.cxx.o.requires
	$(MAKE) -f examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/build.make examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/runEx9Sampler.cxx.o.provides.build
.PHONY : examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/runEx9Sampler.cxx.o.provides

examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/runEx9Sampler.cxx.o.provides.build: examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/runEx9Sampler.cxx.o


# Object files for target ex9-sampler
ex9__sampler_OBJECTS = \
"CMakeFiles/ex9-sampler.dir/runEx9Sampler.cxx.o"

# External object files for target ex9-sampler
ex9__sampler_EXTERNAL_OBJECTS =

bin/examples/MQ/9-PixelDetector/ex9-sampler: examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/runEx9Sampler.cxx.o
bin/examples/MQ/9-PixelDetector/ex9-sampler: examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/build.make
bin/examples/MQ/9-PixelDetector/ex9-sampler: lib/libPixel.16.06.00.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: lib/libMCStack.16.06.00.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: lib/libBaseMQ.16.06.00.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: lib/libFairMQ.16.06.00.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: /Users/turany/development/install/RC_may16_R6/lib64/libzmq.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: lib/libfairmq_logger.16.06.00.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: /Users/turany/development/install/RC_may16_R6/lib64/libboost_log.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: /Users/turany/development/install/RC_may16_R6/lib64/libboost_log_setup.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: /Users/turany/development/install/RC_may16_R6/lib64/libboost_random.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: /Users/turany/development/install/RC_may16_R6/lib64/libboost_chrono.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: /Users/turany/development/install/RC_may16_R6/lib64/libboost_regex.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: /Users/turany/development/install/RC_may16_R6/lib64/libboost_atomic.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: /Users/turany/development/install/RC_may16_R6/lib64/libboost_date_time.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: /Users/turany/development/install/RC_may16_R6/lib64/libnanomsg.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: /Users/turany/development/install/RC_may16_R6/lib64/libboost_timer.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: /Users/turany/development/install/RC_may16_R6/lib64/libboost_filesystem.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: lib/libGen.16.06.00.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: lib/libPassive.16.06.00.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: lib/libBase.16.06.00.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: lib/libMbsAPI.16.06.00.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: lib/libGeoBase.16.06.00.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: lib/libParBase.16.06.00.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: lib/libFairTools.16.06.00.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: /Users/turany/development/install/RC_may16_R6/lib64/libboost_thread.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: /Users/turany/development/install/RC_may16_R6/lib64/libboost_system.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: /Users/turany/development/install/RC_may16_R6/lib64/libboost_serialization.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: /Users/turany/development/install/RC_may16_R6/lib64/libboost_program_options.dylib
bin/examples/MQ/9-PixelDetector/ex9-sampler: examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/turany/development/FairRoot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../bin/examples/MQ/9-PixelDetector/ex9-sampler"
	cd /Users/turany/development/FairRoot/build/examples/MQ/9-PixelDetector/run && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ex9-sampler.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/build: bin/examples/MQ/9-PixelDetector/ex9-sampler

.PHONY : examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/build

examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/requires: examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/runEx9Sampler.cxx.o.requires

.PHONY : examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/requires

examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/clean:
	cd /Users/turany/development/FairRoot/build/examples/MQ/9-PixelDetector/run && $(CMAKE_COMMAND) -P CMakeFiles/ex9-sampler.dir/cmake_clean.cmake
.PHONY : examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/clean

examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/depend:
	cd /Users/turany/development/FairRoot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/turany/development/FairRoot /Users/turany/development/FairRoot/examples/MQ/9-PixelDetector/run /Users/turany/development/FairRoot/build /Users/turany/development/FairRoot/build/examples/MQ/9-PixelDetector/run /Users/turany/development/FairRoot/build/examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/MQ/9-PixelDetector/run/CMakeFiles/ex9-sampler.dir/depend

