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
CMAKE_SOURCE_DIR = /home/said/Dev/cpp/test_cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/said/Dev/cpp/test_cpp/build/debug

# Include any dependencies generated for this target.
include CMakeFiles/Testproject.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Testproject.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Testproject.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Testproject.dir/flags.make

CMakeFiles/Testproject.dir/main.cpp.o: CMakeFiles/Testproject.dir/flags.make
CMakeFiles/Testproject.dir/main.cpp.o: /home/said/Dev/cpp/test_cpp/main.cpp
CMakeFiles/Testproject.dir/main.cpp.o: CMakeFiles/Testproject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/said/Dev/cpp/test_cpp/build/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Testproject.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Testproject.dir/main.cpp.o -MF CMakeFiles/Testproject.dir/main.cpp.o.d -o CMakeFiles/Testproject.dir/main.cpp.o -c /home/said/Dev/cpp/test_cpp/main.cpp

CMakeFiles/Testproject.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Testproject.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/said/Dev/cpp/test_cpp/main.cpp > CMakeFiles/Testproject.dir/main.cpp.i

CMakeFiles/Testproject.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Testproject.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/said/Dev/cpp/test_cpp/main.cpp -o CMakeFiles/Testproject.dir/main.cpp.s

CMakeFiles/Testproject.dir/test.cpp.o: CMakeFiles/Testproject.dir/flags.make
CMakeFiles/Testproject.dir/test.cpp.o: /home/said/Dev/cpp/test_cpp/test.cpp
CMakeFiles/Testproject.dir/test.cpp.o: CMakeFiles/Testproject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/said/Dev/cpp/test_cpp/build/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Testproject.dir/test.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Testproject.dir/test.cpp.o -MF CMakeFiles/Testproject.dir/test.cpp.o.d -o CMakeFiles/Testproject.dir/test.cpp.o -c /home/said/Dev/cpp/test_cpp/test.cpp

CMakeFiles/Testproject.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Testproject.dir/test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/said/Dev/cpp/test_cpp/test.cpp > CMakeFiles/Testproject.dir/test.cpp.i

CMakeFiles/Testproject.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Testproject.dir/test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/said/Dev/cpp/test_cpp/test.cpp -o CMakeFiles/Testproject.dir/test.cpp.s

# Object files for target Testproject
Testproject_OBJECTS = \
"CMakeFiles/Testproject.dir/main.cpp.o" \
"CMakeFiles/Testproject.dir/test.cpp.o"

# External object files for target Testproject
Testproject_EXTERNAL_OBJECTS =

Testproject: CMakeFiles/Testproject.dir/main.cpp.o
Testproject: CMakeFiles/Testproject.dir/test.cpp.o
Testproject: CMakeFiles/Testproject.dir/build.make
Testproject: CMakeFiles/Testproject.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/said/Dev/cpp/test_cpp/build/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Testproject"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Testproject.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Testproject.dir/build: Testproject
.PHONY : CMakeFiles/Testproject.dir/build

CMakeFiles/Testproject.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Testproject.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Testproject.dir/clean

CMakeFiles/Testproject.dir/depend:
	cd /home/said/Dev/cpp/test_cpp/build/debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/said/Dev/cpp/test_cpp /home/said/Dev/cpp/test_cpp /home/said/Dev/cpp/test_cpp/build/debug /home/said/Dev/cpp/test_cpp/build/debug /home/said/Dev/cpp/test_cpp/build/debug/CMakeFiles/Testproject.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Testproject.dir/depend
