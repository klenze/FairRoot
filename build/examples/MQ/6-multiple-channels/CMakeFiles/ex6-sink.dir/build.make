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
include examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/depend.make

# Include the progress variables for this target.
include examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/progress.make

# Include the compile flags for this target's objects.
include examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/flags.make

examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/runExample6Sink.cxx.o: examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/flags.make
examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/runExample6Sink.cxx.o: ../examples/MQ/6-multiple-channels/runExample6Sink.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/turany/development/FairRoot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/runExample6Sink.cxx.o"
	cd /Users/turany/development/FairRoot/build/examples/MQ/6-multiple-channels && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ex6-sink.dir/runExample6Sink.cxx.o -c /Users/turany/development/FairRoot/examples/MQ/6-multiple-channels/runExample6Sink.cxx

examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/runExample6Sink.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex6-sink.dir/runExample6Sink.cxx.i"
	cd /Users/turany/development/FairRoot/build/examples/MQ/6-multiple-channels && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/turany/development/FairRoot/examples/MQ/6-multiple-channels/runExample6Sink.cxx > CMakeFiles/ex6-sink.dir/runExample6Sink.cxx.i

examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/runExample6Sink.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex6-sink.dir/runExample6Sink.cxx.s"
	cd /Users/turany/development/FairRoot/build/examples/MQ/6-multiple-channels && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/turany/development/FairRoot/examples/MQ/6-multiple-channels/runExample6Sink.cxx -o CMakeFiles/ex6-sink.dir/runExample6Sink.cxx.s

examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/runExample6Sink.cxx.o.requires:

.PHONY : examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/runExample6Sink.cxx.o.requires

examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/runExample6Sink.cxx.o.provides: examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/runExample6Sink.cxx.o.requires
	$(MAKE) -f examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/build.make examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/runExample6Sink.cxx.o.provides.build
.PHONY : examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/runExample6Sink.cxx.o.provides

examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/runExample6Sink.cxx.o.provides.build: examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/runExample6Sink.cxx.o


# Object files for target ex6-sink
ex6__sink_OBJECTS = \
"CMakeFiles/ex6-sink.dir/runExample6Sink.cxx.o"

# External object files for target ex6-sink
ex6__sink_EXTERNAL_OBJECTS =

bin/examples/MQ/6-multiple-channels/ex6-sink: examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/runExample6Sink.cxx.o
bin/examples/MQ/6-multiple-channels/ex6-sink: examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/build.make
bin/examples/MQ/6-multiple-channels/ex6-sink: lib/libFairMQExample6.16.06.00.dylib
bin/examples/MQ/6-multiple-channels/ex6-sink: lib/libFairMQ.16.06.00.dylib
bin/examples/MQ/6-multiple-channels/ex6-sink: /Users/turany/development/install/RC_may16_R6/lib64/libzmq.dylib
bin/examples/MQ/6-multiple-channels/ex6-sink: lib/libfairmq_logger.16.06.00.dylib
bin/examples/MQ/6-multiple-channels/ex6-sink: /Users/turany/development/install/RC_may16_R6/lib64/libboost_log.dylib
bin/examples/MQ/6-multiple-channels/ex6-sink: /Users/turany/development/install/RC_may16_R6/lib64/libboost_log_setup.dylib
bin/examples/MQ/6-multiple-channels/ex6-sink: /Users/turany/development/install/RC_may16_R6/lib64/libboost_thread.dylib
bin/examples/MQ/6-multiple-channels/ex6-sink: /Users/turany/development/install/RC_may16_R6/lib64/libboost_timer.dylib
bin/examples/MQ/6-multiple-channels/ex6-sink: /Users/turany/development/install/RC_may16_R6/lib64/libboost_system.dylib
bin/examples/MQ/6-multiple-channels/ex6-sink: /Users/turany/development/install/RC_may16_R6/lib64/libboost_filesystem.dylib
bin/examples/MQ/6-multiple-channels/ex6-sink: /Users/turany/development/install/RC_may16_R6/lib64/libboost_program_options.dylib
bin/examples/MQ/6-multiple-channels/ex6-sink: /Users/turany/development/install/RC_may16_R6/lib64/libboost_random.dylib
bin/examples/MQ/6-multiple-channels/ex6-sink: /Users/turany/development/install/RC_may16_R6/lib64/libboost_chrono.dylib
bin/examples/MQ/6-multiple-channels/ex6-sink: /Users/turany/development/install/RC_may16_R6/lib64/libboost_regex.dylib
bin/examples/MQ/6-multiple-channels/ex6-sink: /Users/turany/development/install/RC_may16_R6/lib64/libboost_atomic.dylib
bin/examples/MQ/6-multiple-channels/ex6-sink: /Users/turany/development/install/RC_may16_R6/lib64/libboost_date_time.dylib
bin/examples/MQ/6-multiple-channels/ex6-sink: /Users/turany/development/install/RC_may16_R6/lib64/libnanomsg.dylib
bin/examples/MQ/6-multiple-channels/ex6-sink: examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/turany/development/FairRoot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/examples/MQ/6-multiple-channels/ex6-sink"
	cd /Users/turany/development/FairRoot/build/examples/MQ/6-multiple-channels && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ex6-sink.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/build: bin/examples/MQ/6-multiple-channels/ex6-sink

.PHONY : examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/build

examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/requires: examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/runExample6Sink.cxx.o.requires

.PHONY : examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/requires

examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/clean:
	cd /Users/turany/development/FairRoot/build/examples/MQ/6-multiple-channels && $(CMAKE_COMMAND) -P CMakeFiles/ex6-sink.dir/cmake_clean.cmake
.PHONY : examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/clean

examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/depend:
	cd /Users/turany/development/FairRoot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/turany/development/FairRoot /Users/turany/development/FairRoot/examples/MQ/6-multiple-channels /Users/turany/development/FairRoot/build /Users/turany/development/FairRoot/build/examples/MQ/6-multiple-channels /Users/turany/development/FairRoot/build/examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/MQ/6-multiple-channels/CMakeFiles/ex6-sink.dir/depend

