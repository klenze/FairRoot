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
include examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/depend.make

# Include the progress variables for this target.
include examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/progress.make

# Include the compile flags for this target's objects.
include examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/flags.make

examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/test/testEx2Processor.cxx.o: examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/flags.make
examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/test/testEx2Processor.cxx.o: ../examples/MQ/serialization/test/testEx2Processor.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/turany/development/FairRoot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/test/testEx2Processor.cxx.o"
	cd /Users/turany/development/FairRoot/build/examples/MQ/serialization && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-serialization-Ex2-Processor.dir/test/testEx2Processor.cxx.o -c /Users/turany/development/FairRoot/examples/MQ/serialization/test/testEx2Processor.cxx

examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/test/testEx2Processor.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-serialization-Ex2-Processor.dir/test/testEx2Processor.cxx.i"
	cd /Users/turany/development/FairRoot/build/examples/MQ/serialization && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/turany/development/FairRoot/examples/MQ/serialization/test/testEx2Processor.cxx > CMakeFiles/test-serialization-Ex2-Processor.dir/test/testEx2Processor.cxx.i

examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/test/testEx2Processor.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-serialization-Ex2-Processor.dir/test/testEx2Processor.cxx.s"
	cd /Users/turany/development/FairRoot/build/examples/MQ/serialization && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/turany/development/FairRoot/examples/MQ/serialization/test/testEx2Processor.cxx -o CMakeFiles/test-serialization-Ex2-Processor.dir/test/testEx2Processor.cxx.s

examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/test/testEx2Processor.cxx.o.requires:

.PHONY : examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/test/testEx2Processor.cxx.o.requires

examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/test/testEx2Processor.cxx.o.provides: examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/test/testEx2Processor.cxx.o.requires
	$(MAKE) -f examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/build.make examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/test/testEx2Processor.cxx.o.provides.build
.PHONY : examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/test/testEx2Processor.cxx.o.provides

examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/test/testEx2Processor.cxx.o.provides.build: examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/test/testEx2Processor.cxx.o


# Object files for target test-serialization-Ex2-Processor
test__serialization__Ex2__Processor_OBJECTS = \
"CMakeFiles/test-serialization-Ex2-Processor.dir/test/testEx2Processor.cxx.o"

# External object files for target test-serialization-Ex2-Processor
test__serialization__Ex2__Processor_EXTERNAL_OBJECTS =

bin/examples/MQ/serialization/test-serialization-Ex2-Processor: examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/test/testEx2Processor.cxx.o
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/build.make
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: lib/libSerializationExample.16.06.00.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: lib/libBaseMQ.16.06.00.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: lib/libBase.16.06.00.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: lib/libMbsAPI.16.06.00.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: lib/libFairMQ.16.06.00.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: /Users/turany/development/install/RC_may16_R6/lib64/libzmq.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: lib/libfairmq_logger.16.06.00.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: /Users/turany/development/install/RC_may16_R6/lib64/libboost_log.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: /Users/turany/development/install/RC_may16_R6/lib64/libboost_log_setup.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: /Users/turany/development/install/RC_may16_R6/lib64/libboost_random.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: /Users/turany/development/install/RC_may16_R6/lib64/libboost_chrono.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: /Users/turany/development/install/RC_may16_R6/lib64/libboost_regex.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: /Users/turany/development/install/RC_may16_R6/lib64/libboost_atomic.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: /Users/turany/development/install/RC_may16_R6/lib64/libboost_date_time.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: /Users/turany/development/install/RC_may16_R6/lib64/libnanomsg.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: lib/libParBase.16.06.00.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: lib/libGeoBase.16.06.00.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: lib/libFairTools.16.06.00.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: /Users/turany/development/install/RC_may16_R6/lib64/libboost_timer.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: /Users/turany/development/install/RC_may16_R6/lib64/libboost_filesystem.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: /Users/turany/development/install/RC_may16_R6/lib64/libboost_thread.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: /Users/turany/development/install/RC_may16_R6/lib64/libboost_system.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: /Users/turany/development/install/RC_may16_R6/lib64/libboost_serialization.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: /Users/turany/development/install/RC_may16_R6/lib64/libboost_program_options.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: /Users/turany/development/install/RC_may16_R6/lib64/libprotobuf.dylib
bin/examples/MQ/serialization/test-serialization-Ex2-Processor: examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/turany/development/FairRoot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/examples/MQ/serialization/test-serialization-Ex2-Processor"
	cd /Users/turany/development/FairRoot/build/examples/MQ/serialization && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-serialization-Ex2-Processor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/build: bin/examples/MQ/serialization/test-serialization-Ex2-Processor

.PHONY : examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/build

examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/requires: examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/test/testEx2Processor.cxx.o.requires

.PHONY : examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/requires

examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/clean:
	cd /Users/turany/development/FairRoot/build/examples/MQ/serialization && $(CMAKE_COMMAND) -P CMakeFiles/test-serialization-Ex2-Processor.dir/cmake_clean.cmake
.PHONY : examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/clean

examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/depend:
	cd /Users/turany/development/FairRoot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/turany/development/FairRoot /Users/turany/development/FairRoot/examples/MQ/serialization /Users/turany/development/FairRoot/build /Users/turany/development/FairRoot/build/examples/MQ/serialization /Users/turany/development/FairRoot/build/examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/MQ/serialization/CMakeFiles/test-serialization-Ex2-Processor.dir/depend

