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
CMAKE_SOURCE_DIR = /Users/linsanity/OneDrive/OpenMesh

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/linsanity/OneDrive/OpenMesh/cmake-build-debug

# Utility rule file for fixbundle.

# Include the progress variables for this target.
include CMakeFiles/fixbundle.dir/progress.make

CMakeFiles/fixbundle:
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -P /Users/linsanity/OneDrive/OpenMesh/cmake-build-debug/fixbundle.cmake

fixbundle: CMakeFiles/fixbundle
fixbundle: CMakeFiles/fixbundle.dir/build.make

.PHONY : fixbundle

# Rule to build all files generated by this target.
CMakeFiles/fixbundle.dir/build: fixbundle

.PHONY : CMakeFiles/fixbundle.dir/build

CMakeFiles/fixbundle.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fixbundle.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fixbundle.dir/clean

CMakeFiles/fixbundle.dir/depend:
	cd /Users/linsanity/OneDrive/OpenMesh/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/linsanity/OneDrive/OpenMesh /Users/linsanity/OneDrive/OpenMesh /Users/linsanity/OneDrive/OpenMesh/cmake-build-debug /Users/linsanity/OneDrive/OpenMesh/cmake-build-debug /Users/linsanity/OneDrive/OpenMesh/cmake-build-debug/CMakeFiles/fixbundle.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fixbundle.dir/depend

