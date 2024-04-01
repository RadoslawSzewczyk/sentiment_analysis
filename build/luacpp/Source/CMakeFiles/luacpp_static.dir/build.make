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
include luacpp/Source/CMakeFiles/luacpp_static.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include luacpp/Source/CMakeFiles/luacpp_static.dir/compiler_depend.make

# Include the progress variables for this target.
include luacpp/Source/CMakeFiles/luacpp_static.dir/progress.make

# Include the compile flags for this target's objects.
include luacpp/Source/CMakeFiles/luacpp_static.dir/flags.make

luacpp/Source/CMakeFiles/luacpp_static.dir/LuaVersion.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/flags.make
luacpp/Source/CMakeFiles/luacpp_static.dir/LuaVersion.cpp.o: /home/radek/repos/sentiment_analysis/luacpp/Source/LuaVersion.cpp
luacpp/Source/CMakeFiles/luacpp_static.dir/LuaVersion.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/radek/repos/sentiment_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object luacpp/Source/CMakeFiles/luacpp_static.dir/LuaVersion.cpp.o"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT luacpp/Source/CMakeFiles/luacpp_static.dir/LuaVersion.cpp.o -MF CMakeFiles/luacpp_static.dir/LuaVersion.cpp.o.d -o CMakeFiles/luacpp_static.dir/LuaVersion.cpp.o -c /home/radek/repos/sentiment_analysis/luacpp/Source/LuaVersion.cpp

luacpp/Source/CMakeFiles/luacpp_static.dir/LuaVersion.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/luacpp_static.dir/LuaVersion.cpp.i"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/radek/repos/sentiment_analysis/luacpp/Source/LuaVersion.cpp > CMakeFiles/luacpp_static.dir/LuaVersion.cpp.i

luacpp/Source/CMakeFiles/luacpp_static.dir/LuaVersion.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/luacpp_static.dir/LuaVersion.cpp.s"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/radek/repos/sentiment_analysis/luacpp/Source/LuaVersion.cpp -o CMakeFiles/luacpp_static.dir/LuaVersion.cpp.s

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaState.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/flags.make
luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaState.cpp.o: /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaState.cpp
luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaState.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/radek/repos/sentiment_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaState.cpp.o"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaState.cpp.o -MF CMakeFiles/luacpp_static.dir/Engine/LuaState.cpp.o.d -o CMakeFiles/luacpp_static.dir/Engine/LuaState.cpp.o -c /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaState.cpp

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaState.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/luacpp_static.dir/Engine/LuaState.cpp.i"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaState.cpp > CMakeFiles/luacpp_static.dir/Engine/LuaState.cpp.i

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaState.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/luacpp_static.dir/Engine/LuaState.cpp.s"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaState.cpp -o CMakeFiles/luacpp_static.dir/Engine/LuaState.cpp.s

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaType.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/flags.make
luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaType.cpp.o: /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaType.cpp
luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaType.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/radek/repos/sentiment_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaType.cpp.o"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaType.cpp.o -MF CMakeFiles/luacpp_static.dir/Engine/LuaType.cpp.o.d -o CMakeFiles/luacpp_static.dir/Engine/LuaType.cpp.o -c /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaType.cpp

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaType.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/luacpp_static.dir/Engine/LuaType.cpp.i"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaType.cpp > CMakeFiles/luacpp_static.dir/Engine/LuaType.cpp.i

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaType.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/luacpp_static.dir/Engine/LuaType.cpp.s"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaType.cpp -o CMakeFiles/luacpp_static.dir/Engine/LuaType.cpp.s

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTNil.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/flags.make
luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTNil.cpp.o: /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTNil.cpp
luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTNil.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/radek/repos/sentiment_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTNil.cpp.o"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTNil.cpp.o -MF CMakeFiles/luacpp_static.dir/Engine/LuaTNil.cpp.o.d -o CMakeFiles/luacpp_static.dir/Engine/LuaTNil.cpp.o -c /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTNil.cpp

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTNil.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/luacpp_static.dir/Engine/LuaTNil.cpp.i"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTNil.cpp > CMakeFiles/luacpp_static.dir/Engine/LuaTNil.cpp.i

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTNil.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/luacpp_static.dir/Engine/LuaTNil.cpp.s"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTNil.cpp -o CMakeFiles/luacpp_static.dir/Engine/LuaTNil.cpp.s

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTString.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/flags.make
luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTString.cpp.o: /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTString.cpp
luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTString.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/radek/repos/sentiment_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTString.cpp.o"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTString.cpp.o -MF CMakeFiles/luacpp_static.dir/Engine/LuaTString.cpp.o.d -o CMakeFiles/luacpp_static.dir/Engine/LuaTString.cpp.o -c /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTString.cpp

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTString.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/luacpp_static.dir/Engine/LuaTString.cpp.i"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTString.cpp > CMakeFiles/luacpp_static.dir/Engine/LuaTString.cpp.i

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTString.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/luacpp_static.dir/Engine/LuaTString.cpp.s"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTString.cpp -o CMakeFiles/luacpp_static.dir/Engine/LuaTString.cpp.s

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTNumber.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/flags.make
luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTNumber.cpp.o: /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTNumber.cpp
luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTNumber.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/radek/repos/sentiment_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTNumber.cpp.o"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTNumber.cpp.o -MF CMakeFiles/luacpp_static.dir/Engine/LuaTNumber.cpp.o.d -o CMakeFiles/luacpp_static.dir/Engine/LuaTNumber.cpp.o -c /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTNumber.cpp

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTNumber.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/luacpp_static.dir/Engine/LuaTNumber.cpp.i"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTNumber.cpp > CMakeFiles/luacpp_static.dir/Engine/LuaTNumber.cpp.i

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTNumber.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/luacpp_static.dir/Engine/LuaTNumber.cpp.s"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTNumber.cpp -o CMakeFiles/luacpp_static.dir/Engine/LuaTNumber.cpp.s

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTBoolean.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/flags.make
luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTBoolean.cpp.o: /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTBoolean.cpp
luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTBoolean.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/radek/repos/sentiment_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTBoolean.cpp.o"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTBoolean.cpp.o -MF CMakeFiles/luacpp_static.dir/Engine/LuaTBoolean.cpp.o.d -o CMakeFiles/luacpp_static.dir/Engine/LuaTBoolean.cpp.o -c /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTBoolean.cpp

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTBoolean.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/luacpp_static.dir/Engine/LuaTBoolean.cpp.i"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTBoolean.cpp > CMakeFiles/luacpp_static.dir/Engine/LuaTBoolean.cpp.i

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTBoolean.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/luacpp_static.dir/Engine/LuaTBoolean.cpp.s"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTBoolean.cpp -o CMakeFiles/luacpp_static.dir/Engine/LuaTBoolean.cpp.s

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTTable.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/flags.make
luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTTable.cpp.o: /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTTable.cpp
luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTTable.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/radek/repos/sentiment_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTTable.cpp.o"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTTable.cpp.o -MF CMakeFiles/luacpp_static.dir/Engine/LuaTTable.cpp.o.d -o CMakeFiles/luacpp_static.dir/Engine/LuaTTable.cpp.o -c /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTTable.cpp

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTTable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/luacpp_static.dir/Engine/LuaTTable.cpp.i"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTTable.cpp > CMakeFiles/luacpp_static.dir/Engine/LuaTTable.cpp.i

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTTable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/luacpp_static.dir/Engine/LuaTTable.cpp.s"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTTable.cpp -o CMakeFiles/luacpp_static.dir/Engine/LuaTTable.cpp.s

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTUserData.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/flags.make
luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTUserData.cpp.o: /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTUserData.cpp
luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTUserData.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/radek/repos/sentiment_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTUserData.cpp.o"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTUserData.cpp.o -MF CMakeFiles/luacpp_static.dir/Engine/LuaTUserData.cpp.o.d -o CMakeFiles/luacpp_static.dir/Engine/LuaTUserData.cpp.o -c /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTUserData.cpp

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTUserData.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/luacpp_static.dir/Engine/LuaTUserData.cpp.i"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTUserData.cpp > CMakeFiles/luacpp_static.dir/Engine/LuaTUserData.cpp.i

luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTUserData.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/luacpp_static.dir/Engine/LuaTUserData.cpp.s"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/radek/repos/sentiment_analysis/luacpp/Source/Engine/LuaTUserData.cpp -o CMakeFiles/luacpp_static.dir/Engine/LuaTUserData.cpp.s

luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaRegistry.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/flags.make
luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaRegistry.cpp.o: /home/radek/repos/sentiment_analysis/luacpp/Source/Registry/LuaRegistry.cpp
luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaRegistry.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/radek/repos/sentiment_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaRegistry.cpp.o"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaRegistry.cpp.o -MF CMakeFiles/luacpp_static.dir/Registry/LuaRegistry.cpp.o.d -o CMakeFiles/luacpp_static.dir/Registry/LuaRegistry.cpp.o -c /home/radek/repos/sentiment_analysis/luacpp/Source/Registry/LuaRegistry.cpp

luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaRegistry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/luacpp_static.dir/Registry/LuaRegistry.cpp.i"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/radek/repos/sentiment_analysis/luacpp/Source/Registry/LuaRegistry.cpp > CMakeFiles/luacpp_static.dir/Registry/LuaRegistry.cpp.i

luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaRegistry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/luacpp_static.dir/Registry/LuaRegistry.cpp.s"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/radek/repos/sentiment_analysis/luacpp/Source/Registry/LuaRegistry.cpp -o CMakeFiles/luacpp_static.dir/Registry/LuaRegistry.cpp.s

luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCodeSnippet.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/flags.make
luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCodeSnippet.cpp.o: /home/radek/repos/sentiment_analysis/luacpp/Source/Registry/LuaCodeSnippet.cpp
luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCodeSnippet.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/radek/repos/sentiment_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCodeSnippet.cpp.o"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCodeSnippet.cpp.o -MF CMakeFiles/luacpp_static.dir/Registry/LuaCodeSnippet.cpp.o.d -o CMakeFiles/luacpp_static.dir/Registry/LuaCodeSnippet.cpp.o -c /home/radek/repos/sentiment_analysis/luacpp/Source/Registry/LuaCodeSnippet.cpp

luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCodeSnippet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/luacpp_static.dir/Registry/LuaCodeSnippet.cpp.i"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/radek/repos/sentiment_analysis/luacpp/Source/Registry/LuaCodeSnippet.cpp > CMakeFiles/luacpp_static.dir/Registry/LuaCodeSnippet.cpp.i

luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCodeSnippet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/luacpp_static.dir/Registry/LuaCodeSnippet.cpp.s"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/radek/repos/sentiment_analysis/luacpp/Source/Registry/LuaCodeSnippet.cpp -o CMakeFiles/luacpp_static.dir/Registry/LuaCodeSnippet.cpp.s

luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCompiler.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/flags.make
luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCompiler.cpp.o: /home/radek/repos/sentiment_analysis/luacpp/Source/Registry/LuaCompiler.cpp
luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCompiler.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/radek/repos/sentiment_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCompiler.cpp.o"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCompiler.cpp.o -MF CMakeFiles/luacpp_static.dir/Registry/LuaCompiler.cpp.o.d -o CMakeFiles/luacpp_static.dir/Registry/LuaCompiler.cpp.o -c /home/radek/repos/sentiment_analysis/luacpp/Source/Registry/LuaCompiler.cpp

luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCompiler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/luacpp_static.dir/Registry/LuaCompiler.cpp.i"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/radek/repos/sentiment_analysis/luacpp/Source/Registry/LuaCompiler.cpp > CMakeFiles/luacpp_static.dir/Registry/LuaCompiler.cpp.i

luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCompiler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/luacpp_static.dir/Registry/LuaCompiler.cpp.s"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/radek/repos/sentiment_analysis/luacpp/Source/Registry/LuaCompiler.cpp -o CMakeFiles/luacpp_static.dir/Registry/LuaCompiler.cpp.s

luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCFunction.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/flags.make
luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCFunction.cpp.o: /home/radek/repos/sentiment_analysis/luacpp/Source/Registry/LuaCFunction.cpp
luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCFunction.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/radek/repos/sentiment_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCFunction.cpp.o"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCFunction.cpp.o -MF CMakeFiles/luacpp_static.dir/Registry/LuaCFunction.cpp.o.d -o CMakeFiles/luacpp_static.dir/Registry/LuaCFunction.cpp.o -c /home/radek/repos/sentiment_analysis/luacpp/Source/Registry/LuaCFunction.cpp

luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCFunction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/luacpp_static.dir/Registry/LuaCFunction.cpp.i"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/radek/repos/sentiment_analysis/luacpp/Source/Registry/LuaCFunction.cpp > CMakeFiles/luacpp_static.dir/Registry/LuaCFunction.cpp.i

luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCFunction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/luacpp_static.dir/Registry/LuaCFunction.cpp.s"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/radek/repos/sentiment_analysis/luacpp/Source/Registry/LuaCFunction.cpp -o CMakeFiles/luacpp_static.dir/Registry/LuaCFunction.cpp.s

luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaLibrary.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/flags.make
luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaLibrary.cpp.o: /home/radek/repos/sentiment_analysis/luacpp/Source/Registry/LuaLibrary.cpp
luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaLibrary.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/radek/repos/sentiment_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaLibrary.cpp.o"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaLibrary.cpp.o -MF CMakeFiles/luacpp_static.dir/Registry/LuaLibrary.cpp.o.d -o CMakeFiles/luacpp_static.dir/Registry/LuaLibrary.cpp.o -c /home/radek/repos/sentiment_analysis/luacpp/Source/Registry/LuaLibrary.cpp

luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaLibrary.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/luacpp_static.dir/Registry/LuaLibrary.cpp.i"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/radek/repos/sentiment_analysis/luacpp/Source/Registry/LuaLibrary.cpp > CMakeFiles/luacpp_static.dir/Registry/LuaLibrary.cpp.i

luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaLibrary.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/luacpp_static.dir/Registry/LuaLibrary.cpp.s"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/radek/repos/sentiment_analysis/luacpp/Source/Registry/LuaLibrary.cpp -o CMakeFiles/luacpp_static.dir/Registry/LuaLibrary.cpp.s

luacpp/Source/CMakeFiles/luacpp_static.dir/LuaContext.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/flags.make
luacpp/Source/CMakeFiles/luacpp_static.dir/LuaContext.cpp.o: /home/radek/repos/sentiment_analysis/luacpp/Source/LuaContext.cpp
luacpp/Source/CMakeFiles/luacpp_static.dir/LuaContext.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/radek/repos/sentiment_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object luacpp/Source/CMakeFiles/luacpp_static.dir/LuaContext.cpp.o"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT luacpp/Source/CMakeFiles/luacpp_static.dir/LuaContext.cpp.o -MF CMakeFiles/luacpp_static.dir/LuaContext.cpp.o.d -o CMakeFiles/luacpp_static.dir/LuaContext.cpp.o -c /home/radek/repos/sentiment_analysis/luacpp/Source/LuaContext.cpp

luacpp/Source/CMakeFiles/luacpp_static.dir/LuaContext.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/luacpp_static.dir/LuaContext.cpp.i"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/radek/repos/sentiment_analysis/luacpp/Source/LuaContext.cpp > CMakeFiles/luacpp_static.dir/LuaContext.cpp.i

luacpp/Source/CMakeFiles/luacpp_static.dir/LuaContext.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/luacpp_static.dir/LuaContext.cpp.s"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/radek/repos/sentiment_analysis/luacpp/Source/LuaContext.cpp -o CMakeFiles/luacpp_static.dir/LuaContext.cpp.s

luacpp/Source/CMakeFiles/luacpp_static.dir/LuaMetaObject.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/flags.make
luacpp/Source/CMakeFiles/luacpp_static.dir/LuaMetaObject.cpp.o: /home/radek/repos/sentiment_analysis/luacpp/Source/LuaMetaObject.cpp
luacpp/Source/CMakeFiles/luacpp_static.dir/LuaMetaObject.cpp.o: luacpp/Source/CMakeFiles/luacpp_static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/radek/repos/sentiment_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object luacpp/Source/CMakeFiles/luacpp_static.dir/LuaMetaObject.cpp.o"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT luacpp/Source/CMakeFiles/luacpp_static.dir/LuaMetaObject.cpp.o -MF CMakeFiles/luacpp_static.dir/LuaMetaObject.cpp.o.d -o CMakeFiles/luacpp_static.dir/LuaMetaObject.cpp.o -c /home/radek/repos/sentiment_analysis/luacpp/Source/LuaMetaObject.cpp

luacpp/Source/CMakeFiles/luacpp_static.dir/LuaMetaObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/luacpp_static.dir/LuaMetaObject.cpp.i"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/radek/repos/sentiment_analysis/luacpp/Source/LuaMetaObject.cpp > CMakeFiles/luacpp_static.dir/LuaMetaObject.cpp.i

luacpp/Source/CMakeFiles/luacpp_static.dir/LuaMetaObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/luacpp_static.dir/LuaMetaObject.cpp.s"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/radek/repos/sentiment_analysis/luacpp/Source/LuaMetaObject.cpp -o CMakeFiles/luacpp_static.dir/LuaMetaObject.cpp.s

# Object files for target luacpp_static
luacpp_static_OBJECTS = \
"CMakeFiles/luacpp_static.dir/LuaVersion.cpp.o" \
"CMakeFiles/luacpp_static.dir/Engine/LuaState.cpp.o" \
"CMakeFiles/luacpp_static.dir/Engine/LuaType.cpp.o" \
"CMakeFiles/luacpp_static.dir/Engine/LuaTNil.cpp.o" \
"CMakeFiles/luacpp_static.dir/Engine/LuaTString.cpp.o" \
"CMakeFiles/luacpp_static.dir/Engine/LuaTNumber.cpp.o" \
"CMakeFiles/luacpp_static.dir/Engine/LuaTBoolean.cpp.o" \
"CMakeFiles/luacpp_static.dir/Engine/LuaTTable.cpp.o" \
"CMakeFiles/luacpp_static.dir/Engine/LuaTUserData.cpp.o" \
"CMakeFiles/luacpp_static.dir/Registry/LuaRegistry.cpp.o" \
"CMakeFiles/luacpp_static.dir/Registry/LuaCodeSnippet.cpp.o" \
"CMakeFiles/luacpp_static.dir/Registry/LuaCompiler.cpp.o" \
"CMakeFiles/luacpp_static.dir/Registry/LuaCFunction.cpp.o" \
"CMakeFiles/luacpp_static.dir/Registry/LuaLibrary.cpp.o" \
"CMakeFiles/luacpp_static.dir/LuaContext.cpp.o" \
"CMakeFiles/luacpp_static.dir/LuaMetaObject.cpp.o"

# External object files for target luacpp_static
luacpp_static_EXTERNAL_OBJECTS =

luacpp/Source/libluacpp.a: luacpp/Source/CMakeFiles/luacpp_static.dir/LuaVersion.cpp.o
luacpp/Source/libluacpp.a: luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaState.cpp.o
luacpp/Source/libluacpp.a: luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaType.cpp.o
luacpp/Source/libluacpp.a: luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTNil.cpp.o
luacpp/Source/libluacpp.a: luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTString.cpp.o
luacpp/Source/libluacpp.a: luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTNumber.cpp.o
luacpp/Source/libluacpp.a: luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTBoolean.cpp.o
luacpp/Source/libluacpp.a: luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTTable.cpp.o
luacpp/Source/libluacpp.a: luacpp/Source/CMakeFiles/luacpp_static.dir/Engine/LuaTUserData.cpp.o
luacpp/Source/libluacpp.a: luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaRegistry.cpp.o
luacpp/Source/libluacpp.a: luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCodeSnippet.cpp.o
luacpp/Source/libluacpp.a: luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCompiler.cpp.o
luacpp/Source/libluacpp.a: luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaCFunction.cpp.o
luacpp/Source/libluacpp.a: luacpp/Source/CMakeFiles/luacpp_static.dir/Registry/LuaLibrary.cpp.o
luacpp/Source/libluacpp.a: luacpp/Source/CMakeFiles/luacpp_static.dir/LuaContext.cpp.o
luacpp/Source/libluacpp.a: luacpp/Source/CMakeFiles/luacpp_static.dir/LuaMetaObject.cpp.o
luacpp/Source/libluacpp.a: luacpp/Source/CMakeFiles/luacpp_static.dir/build.make
luacpp/Source/libluacpp.a: luacpp/Source/CMakeFiles/luacpp_static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/radek/repos/sentiment_analysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Linking CXX static library libluacpp.a"
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && $(CMAKE_COMMAND) -P CMakeFiles/luacpp_static.dir/cmake_clean_target.cmake
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/luacpp_static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
luacpp/Source/CMakeFiles/luacpp_static.dir/build: luacpp/Source/libluacpp.a
.PHONY : luacpp/Source/CMakeFiles/luacpp_static.dir/build

luacpp/Source/CMakeFiles/luacpp_static.dir/clean:
	cd /home/radek/repos/sentiment_analysis/build/luacpp/Source && $(CMAKE_COMMAND) -P CMakeFiles/luacpp_static.dir/cmake_clean.cmake
.PHONY : luacpp/Source/CMakeFiles/luacpp_static.dir/clean

luacpp/Source/CMakeFiles/luacpp_static.dir/depend:
	cd /home/radek/repos/sentiment_analysis/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/radek/repos/sentiment_analysis /home/radek/repos/sentiment_analysis/luacpp/Source /home/radek/repos/sentiment_analysis/build /home/radek/repos/sentiment_analysis/build/luacpp/Source /home/radek/repos/sentiment_analysis/build/luacpp/Source/CMakeFiles/luacpp_static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : luacpp/Source/CMakeFiles/luacpp_static.dir/depend

