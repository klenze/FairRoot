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
include examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/depend.make

# Include the progress variables for this target.
include examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/progress.make

# Include the compile flags for this target's objects.
include examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/flags.make

examples/MQ/LmdSampler/G__LmdMQSamplerDict.cxx: ../examples/MQ/LmdSampler/unpacker/FairTut8Unpacker.h
examples/MQ/LmdSampler/G__LmdMQSamplerDict.cxx: ../examples/MQ/LmdSampler/LmdSamplerLinkDef.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/turany/development/FairRoot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating G__LmdMQSamplerDict.cxx, G__LmdMQSamplerDict_rdict.pcm, ../../../lib/libLmdMQSampler.rootmap"
	cd /Users/turany/development/FairRoot/build/examples/MQ/LmdSampler && ./generate_dictionary_G__LmdMQSamplerDict.sh
	cd /Users/turany/development/FairRoot/build/examples/MQ/LmdSampler && /Applications/CMake.app/Contents/bin/cmake -E copy_if_different /Users/turany/development/FairRoot/build/examples/MQ/LmdSampler/G__LmdMQSamplerDict_rdict.pcm /Users/turany/development/FairRoot/build/lib/G__LmdMQSamplerDict_rdict.pcm

examples/MQ/LmdSampler/G__LmdMQSamplerDict_rdict.pcm: examples/MQ/LmdSampler/G__LmdMQSamplerDict.cxx
	@$(CMAKE_COMMAND) -E touch_nocreate examples/MQ/LmdSampler/G__LmdMQSamplerDict_rdict.pcm

lib/libLmdMQSampler.rootmap: examples/MQ/LmdSampler/G__LmdMQSamplerDict.cxx
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libLmdMQSampler.rootmap

examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/unpacker/FairTut8Unpacker.cxx.o: examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/flags.make
examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/unpacker/FairTut8Unpacker.cxx.o: ../examples/MQ/LmdSampler/unpacker/FairTut8Unpacker.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/turany/development/FairRoot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/unpacker/FairTut8Unpacker.cxx.o"
	cd /Users/turany/development/FairRoot/build/examples/MQ/LmdSampler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LmdMQSampler.dir/unpacker/FairTut8Unpacker.cxx.o -c /Users/turany/development/FairRoot/examples/MQ/LmdSampler/unpacker/FairTut8Unpacker.cxx

examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/unpacker/FairTut8Unpacker.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LmdMQSampler.dir/unpacker/FairTut8Unpacker.cxx.i"
	cd /Users/turany/development/FairRoot/build/examples/MQ/LmdSampler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/turany/development/FairRoot/examples/MQ/LmdSampler/unpacker/FairTut8Unpacker.cxx > CMakeFiles/LmdMQSampler.dir/unpacker/FairTut8Unpacker.cxx.i

examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/unpacker/FairTut8Unpacker.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LmdMQSampler.dir/unpacker/FairTut8Unpacker.cxx.s"
	cd /Users/turany/development/FairRoot/build/examples/MQ/LmdSampler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/turany/development/FairRoot/examples/MQ/LmdSampler/unpacker/FairTut8Unpacker.cxx -o CMakeFiles/LmdMQSampler.dir/unpacker/FairTut8Unpacker.cxx.s

examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/unpacker/FairTut8Unpacker.cxx.o.requires:

.PHONY : examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/unpacker/FairTut8Unpacker.cxx.o.requires

examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/unpacker/FairTut8Unpacker.cxx.o.provides: examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/unpacker/FairTut8Unpacker.cxx.o.requires
	$(MAKE) -f examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/build.make examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/unpacker/FairTut8Unpacker.cxx.o.provides.build
.PHONY : examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/unpacker/FairTut8Unpacker.cxx.o.provides

examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/unpacker/FairTut8Unpacker.cxx.o.provides.build: examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/unpacker/FairTut8Unpacker.cxx.o


examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/G__LmdMQSamplerDict.cxx.o: examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/flags.make
examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/G__LmdMQSamplerDict.cxx.o: examples/MQ/LmdSampler/G__LmdMQSamplerDict.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/turany/development/FairRoot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/G__LmdMQSamplerDict.cxx.o"
	cd /Users/turany/development/FairRoot/build/examples/MQ/LmdSampler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-old-style-cast -o CMakeFiles/LmdMQSampler.dir/G__LmdMQSamplerDict.cxx.o -c /Users/turany/development/FairRoot/build/examples/MQ/LmdSampler/G__LmdMQSamplerDict.cxx

examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/G__LmdMQSamplerDict.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LmdMQSampler.dir/G__LmdMQSamplerDict.cxx.i"
	cd /Users/turany/development/FairRoot/build/examples/MQ/LmdSampler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-old-style-cast -E /Users/turany/development/FairRoot/build/examples/MQ/LmdSampler/G__LmdMQSamplerDict.cxx > CMakeFiles/LmdMQSampler.dir/G__LmdMQSamplerDict.cxx.i

examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/G__LmdMQSamplerDict.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LmdMQSampler.dir/G__LmdMQSamplerDict.cxx.s"
	cd /Users/turany/development/FairRoot/build/examples/MQ/LmdSampler && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-old-style-cast -S /Users/turany/development/FairRoot/build/examples/MQ/LmdSampler/G__LmdMQSamplerDict.cxx -o CMakeFiles/LmdMQSampler.dir/G__LmdMQSamplerDict.cxx.s

examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/G__LmdMQSamplerDict.cxx.o.requires:

.PHONY : examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/G__LmdMQSamplerDict.cxx.o.requires

examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/G__LmdMQSamplerDict.cxx.o.provides: examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/G__LmdMQSamplerDict.cxx.o.requires
	$(MAKE) -f examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/build.make examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/G__LmdMQSamplerDict.cxx.o.provides.build
.PHONY : examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/G__LmdMQSamplerDict.cxx.o.provides

examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/G__LmdMQSamplerDict.cxx.o.provides.build: examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/G__LmdMQSamplerDict.cxx.o


# Object files for target LmdMQSampler
LmdMQSampler_OBJECTS = \
"CMakeFiles/LmdMQSampler.dir/unpacker/FairTut8Unpacker.cxx.o" \
"CMakeFiles/LmdMQSampler.dir/G__LmdMQSamplerDict.cxx.o"

# External object files for target LmdMQSampler
LmdMQSampler_EXTERNAL_OBJECTS =

lib/libLmdMQSampler.16.06.00.dylib: examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/unpacker/FairTut8Unpacker.cxx.o
lib/libLmdMQSampler.16.06.00.dylib: examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/G__LmdMQSamplerDict.cxx.o
lib/libLmdMQSampler.16.06.00.dylib: examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/build.make
lib/libLmdMQSampler.16.06.00.dylib: lib/libMbsTutorial.16.06.00.dylib
lib/libLmdMQSampler.16.06.00.dylib: lib/libBase.16.06.00.dylib
lib/libLmdMQSampler.16.06.00.dylib: lib/libParBase.16.06.00.dylib
lib/libLmdMQSampler.16.06.00.dylib: lib/libGeoBase.16.06.00.dylib
lib/libLmdMQSampler.16.06.00.dylib: lib/libFairTools.16.06.00.dylib
lib/libLmdMQSampler.16.06.00.dylib: lib/libMbsAPI.16.06.00.dylib
lib/libLmdMQSampler.16.06.00.dylib: examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/turany/development/FairRoot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library ../../../lib/libLmdMQSampler.dylib"
	cd /Users/turany/development/FairRoot/build/examples/MQ/LmdSampler && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LmdMQSampler.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/turany/development/FairRoot/build/examples/MQ/LmdSampler && $(CMAKE_COMMAND) -E cmake_symlink_library ../../../lib/libLmdMQSampler.16.06.00.dylib ../../../lib/libLmdMQSampler.16.dylib ../../../lib/libLmdMQSampler.dylib

lib/libLmdMQSampler.16.dylib: lib/libLmdMQSampler.16.06.00.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libLmdMQSampler.16.dylib

lib/libLmdMQSampler.dylib: lib/libLmdMQSampler.16.06.00.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libLmdMQSampler.dylib

# Rule to build all files generated by this target.
examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/build: lib/libLmdMQSampler.dylib

.PHONY : examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/build

examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/requires: examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/unpacker/FairTut8Unpacker.cxx.o.requires
examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/requires: examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/G__LmdMQSamplerDict.cxx.o.requires

.PHONY : examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/requires

examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/clean:
	cd /Users/turany/development/FairRoot/build/examples/MQ/LmdSampler && $(CMAKE_COMMAND) -P CMakeFiles/LmdMQSampler.dir/cmake_clean.cmake
.PHONY : examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/clean

examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/depend: examples/MQ/LmdSampler/G__LmdMQSamplerDict.cxx
examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/depend: examples/MQ/LmdSampler/G__LmdMQSamplerDict_rdict.pcm
examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/depend: lib/libLmdMQSampler.rootmap
	cd /Users/turany/development/FairRoot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/turany/development/FairRoot /Users/turany/development/FairRoot/examples/MQ/LmdSampler /Users/turany/development/FairRoot/build /Users/turany/development/FairRoot/build/examples/MQ/LmdSampler /Users/turany/development/FairRoot/build/examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/MQ/LmdSampler/CMakeFiles/LmdMQSampler.dir/depend

