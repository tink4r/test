# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/linsanity/Documents/Github/Rulin_Libigl_Project_Template

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/linsanity/Documents/Github/Rulin_Libigl_Project_Template/cmake-build-debug

# Include any dependencies generated for this target.
include ext/stb_image/CMakeFiles/igl_stb_image.dir/depend.make

# Include the progress variables for this target.
include ext/stb_image/CMakeFiles/igl_stb_image.dir/progress.make

# Include the compile flags for this target's objects.
include ext/stb_image/CMakeFiles/igl_stb_image.dir/flags.make

ext/stb_image/CMakeFiles/igl_stb_image.dir/igl_stb_image.cpp.o: ext/stb_image/CMakeFiles/igl_stb_image.dir/flags.make
ext/stb_image/CMakeFiles/igl_stb_image.dir/igl_stb_image.cpp.o: ../ext/libigl/external/stb/igl_stb_image.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/linsanity/Documents/Github/Rulin_Libigl_Project_Template/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ext/stb_image/CMakeFiles/igl_stb_image.dir/igl_stb_image.cpp.o"
	cd /Users/linsanity/Documents/Github/Rulin_Libigl_Project_Template/cmake-build-debug/ext/stb_image && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/igl_stb_image.dir/igl_stb_image.cpp.o -c /Users/linsanity/Documents/Github/Rulin_Libigl_Project_Template/ext/libigl/external/stb/igl_stb_image.cpp

ext/stb_image/CMakeFiles/igl_stb_image.dir/igl_stb_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/igl_stb_image.dir/igl_stb_image.cpp.i"
	cd /Users/linsanity/Documents/Github/Rulin_Libigl_Project_Template/cmake-build-debug/ext/stb_image && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/linsanity/Documents/Github/Rulin_Libigl_Project_Template/ext/libigl/external/stb/igl_stb_image.cpp > CMakeFiles/igl_stb_image.dir/igl_stb_image.cpp.i

ext/stb_image/CMakeFiles/igl_stb_image.dir/igl_stb_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/igl_stb_image.dir/igl_stb_image.cpp.s"
	cd /Users/linsanity/Documents/Github/Rulin_Libigl_Project_Template/cmake-build-debug/ext/stb_image && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/linsanity/Documents/Github/Rulin_Libigl_Project_Template/ext/libigl/external/stb/igl_stb_image.cpp -o CMakeFiles/igl_stb_image.dir/igl_stb_image.cpp.s

# Object files for target igl_stb_image
igl_stb_image_OBJECTS = \
"CMakeFiles/igl_stb_image.dir/igl_stb_image.cpp.o"

# External object files for target igl_stb_image
igl_stb_image_EXTERNAL_OBJECTS =

ext/stb_image/libigl_stb_image.dylib: ext/stb_image/CMakeFiles/igl_stb_image.dir/igl_stb_image.cpp.o
ext/stb_image/libigl_stb_image.dylib: ext/stb_image/CMakeFiles/igl_stb_image.dir/build.make
ext/stb_image/libigl_stb_image.dylib: ext/stb_image/CMakeFiles/igl_stb_image.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/linsanity/Documents/Github/Rulin_Libigl_Project_Template/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libigl_stb_image.dylib"
	cd /Users/linsanity/Documents/Github/Rulin_Libigl_Project_Template/cmake-build-debug/ext/stb_image && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/igl_stb_image.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ext/stb_image/CMakeFiles/igl_stb_image.dir/build: ext/stb_image/libigl_stb_image.dylib

.PHONY : ext/stb_image/CMakeFiles/igl_stb_image.dir/build

ext/stb_image/CMakeFiles/igl_stb_image.dir/clean:
	cd /Users/linsanity/Documents/Github/Rulin_Libigl_Project_Template/cmake-build-debug/ext/stb_image && $(CMAKE_COMMAND) -P CMakeFiles/igl_stb_image.dir/cmake_clean.cmake
.PHONY : ext/stb_image/CMakeFiles/igl_stb_image.dir/clean

ext/stb_image/CMakeFiles/igl_stb_image.dir/depend:
	cd /Users/linsanity/Documents/Github/Rulin_Libigl_Project_Template/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/linsanity/Documents/Github/Rulin_Libigl_Project_Template /Users/linsanity/Documents/Github/Rulin_Libigl_Project_Template/ext/libigl/external/stb /Users/linsanity/Documents/Github/Rulin_Libigl_Project_Template/cmake-build-debug /Users/linsanity/Documents/Github/Rulin_Libigl_Project_Template/cmake-build-debug/ext/stb_image /Users/linsanity/Documents/Github/Rulin_Libigl_Project_Template/cmake-build-debug/ext/stb_image/CMakeFiles/igl_stb_image.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ext/stb_image/CMakeFiles/igl_stb_image.dir/depend

