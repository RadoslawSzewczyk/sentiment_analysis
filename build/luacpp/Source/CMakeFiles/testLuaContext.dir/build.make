# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/radek/repos/sentiment_analysis

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/radek/repos/sentiment_analysis/build

# Include any dependencies generated for this target.
include luacpp/Source/CMakeFiles/testLuaContext.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include luacpp/Source/CMakeFiles/testLuaContext.dir/compiler_depend.make

# Include the progress variables for this target.
include luacpp/Source/CMakeFiles/testLuaContext.dir/progress.make

# Include the compile flags for this target's objects.
include luacpp/Source/CMakeFiles/testLuaContext.dir/flags.make

luacpp/Source/CMakeFiles/testLuaContext.dir/UnitTest/TestLuaContext.cpp.o: luacpp/Source/CMakeFiles/testLuaContext.dir/flags.make
luacpp/Source/CMakeFiles/testLuaContext.dir/UnitTest/TestLuaContext.cpp.o: /home/radek/repos/sentiment_analysis/luacpp/Source/UnitTest/TestLuaContext.cpp
luacpp/Source/CMakeFiles/testLuaContext.dir/UnitTest/TestLuaContext.cpp.o: luacpp/Source/CMakeFiles/testLuaContext.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/radek/repos/sentiment_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object luacpp/Source/CMakeFiles/testLuaContext.dir/UnitTest/TestLuaContext.cpp.o"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT luacpp/Source/CMakeFiles/testLuaContext.dir/UnitTest/TestLuaContext.cpp.o -MF CMakeFiles/testLuaContext.dir/UnitTest/TestLuaContext.cpp.o.d -o CMakeFiles/testLuaContext.dir/UnitTest/TestLuaContext.cpp.o -c /home/radek/repos/sentiment_analysis/luacpp/Source/UnitTest/TestLuaContext.cpp

luacpp/Source/CMakeFiles/testLuaContext.dir/UnitTest/TestLuaContext.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testLuaContext.dir/UnitTest/TestLuaContext.cpp.i"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/radek/repos/sentiment_analysis/luacpp/Source/UnitTest/TestLuaContext.cpp > CMakeFiles/testLuaContext.dir/UnitTest/TestLuaContext.cpp.i

luacpp/Source/CMakeFiles/testLuaContext.dir/UnitTest/TestLuaContext.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testLuaContext.dir/UnitTest/TestLuaContext.cpp.s"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/radek/repos/sentiment_analysis/luacpp/Source/UnitTest/TestLuaContext.cpp -o CMakeFiles/testLuaContext.dir/UnitTest/TestLuaContext.cpp.s

# Object files for target testLuaContext
testLuaContext_OBJECTS = \
"CMakeFiles/testLuaContext.dir/UnitTest/TestLuaContext.cpp.o"

# External object files for target testLuaContext
testLuaContext_EXTERNAL_OBJECTS =

luacpp/Source/testLuaContext: luacpp/Source/CMakeFiles/testLuaContext.dir/UnitTest/TestLuaContext.cpp.o
luacpp/Source/testLuaContext: luacpp/Source/CMakeFiles/testLuaContext.dir/build.make
luacpp/Source/testLuaContext: luacpp/Source/libluacpp.a
luacpp/Source/testLuaContext: /usr/lib/x86_64-linux-gnu/liblua5.3.so
luacpp/Source/testLuaContext: /usr/lib/x86_64-linux-gnu/libm.so
luacpp/Source/testLuaContext: luacpp/Source/CMakeFiles/testLuaContext.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/radek/repos/sentiment_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testLuaContext"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testLuaContext.dir/link.txt --verbose=$(VERBOSE)
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/cmake -D TEST_TARGET=testLuaContext -D TEST_EXECUTABLE=/home/radek/repos/sentiment_analysis/build/luacpp/Source/testLuaContext -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/radek/repos/sentiment_analysis/build/luacpp/Source -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=testLuaContext_TESTS -D CTEST_FILE=/home/radek/repos/sentiment_analysis/build/luacpp/Source/testLuaContext[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_XML_OUTPUT_DIR= -P /usr/share/cmake-3.25/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
luacpp/Source/CMakeFiles/testLuaContext.dir/build: luacpp/Source/testLuaContext
.PHONY : luacpp/Source/CMakeFiles/testLuaContext.dir/build

luacpp/Source/CMakeFiles/testLuaContext.dir/clean:
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && $(CMAKE_COMMAND) -P CMakeFiles/testLuaContext.dir/cmake_clean.cmake
.PHONY : luacpp/Source/CMakeFiles/testLuaContext.dir/clean

luacpp/Source/CMakeFiles/testLuaContext.dir/depend:
	cd /home/radek/repos/sentiment_analysis/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/radek/repos/sentiment_analysis /home/radek/repos/sentiment_analysis/luacpp/Source /home/radek/repos/sentiment_analysis/build /home/radek/repos/sentiment_analysis/build/luacpp/Source /home/radek/repos/sentiment_analysis/build/luacpp/Source/CMakeFiles/testLuaContext.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : luacpp/Source/CMakeFiles/testLuaContext.dir/depend

