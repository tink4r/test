# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.19.7/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.19.7/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/linsanity/OneDrive/OpenMesh

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/linsanity/OneDrive/OpenMesh/build

# Include any dependencies generated for this target.
include src/OpenMesh/Apps/Subdivider/commandlineSubdivider/CMakeFiles/commandlineSubdivider.dir/depend.make

# Include the progress variables for this target.
include src/OpenMesh/Apps/Subdivider/commandlineSubdivider/CMakeFiles/commandlineSubdivider.dir/progress.make

# Include the compile flags for this target's objects.
include src/OpenMesh/Apps/Subdivider/commandlineSubdivider/CMakeFiles/commandlineSubdivider.dir/flags.make

src/OpenMesh/Apps/Subdivider/commandlineSubdivider/CMakeFiles/commandlineSubdivider.dir/__/subdivider.cc.o: src/OpenMesh/Apps/Subdivider/commandlineSubdivider/CMakeFiles/commandlineSubdivider.dir/flags.make
src/OpenMesh/Apps/Subdivider/commandlineSubdivider/CMakeFiles/commandlineSubdivider.dir/__/subdivider.cc.o: ../src/OpenMesh/Apps/Subdivider/subdivider.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/linsanity/OneDrive/OpenMesh/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/OpenMesh/Apps/Subdivider/commandlineSubdivider/CMakeFiles/commandlineSubdivider.dir/__/subdivider.cc.o"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Apps/Subdivider/commandlineSubdivider && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/commandlineSubdivider.dir/__/subdivider.cc.o -c /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Apps/Subdivider/subdivider.cc

src/OpenMesh/Apps/Subdivider/commandlineSubdivider/CMakeFiles/commandlineSubdivider.dir/__/subdivider.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/commandlineSubdivider.dir/__/subdivider.cc.i"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Apps/Subdivider/commandlineSubdivider && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Apps/Subdivider/subdivider.cc > CMakeFiles/commandlineSubdivider.dir/__/subdivider.cc.i

src/OpenMesh/Apps/Subdivider/commandlineSubdivider/CMakeFiles/commandlineSubdivider.dir/__/subdivider.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/commandlineSubdivider.dir/__/subdivider.cc.s"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Apps/Subdivider/commandlineSubdivider && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Apps/Subdivider/subdivider.cc -o CMakeFiles/commandlineSubdivider.dir/__/subdivider.cc.s

# Object files for target commandlineSubdivider
commandlineSubdivider_OBJECTS = \
"CMakeFiles/commandlineSubdivider.dir/__/subdivider.cc.o"

# External object files for target commandlineSubdivider
commandlineSubdivider_EXTERNAL_OBJECTS =

src/OpenMesh/Apps/Subdivider/commandlineSubdivider/commandlineSubdivider: src/OpenMesh/Apps/Subdivider/commandlineSubdivider/CMakeFiles/commandlineSubdivider.dir/__/subdivider.cc.o
src/OpenMesh/Apps/Subdivider/commandlineSubdivider/commandlineSubdivider: src/OpenMesh/Apps/Subdivider/commandlineSubdivider/CMakeFiles/commandlineSubdivider.dir/build.make
src/OpenMesh/Apps/Subdivider/commandlineSubdivider/commandlineSubdivider: src/OpenMesh/Tools/libOpenMeshTools.9.1.dylib
src/OpenMesh/Apps/Subdivider/commandlineSubdivider/commandlineSubdivider: src/OpenMesh/Core/libOpenMeshCore.9.1.dylib
src/OpenMesh/Apps/Subdivider/commandlineSubdivider/commandlineSubdivider: src/OpenMesh/Apps/Subdivider/commandlineSubdivider/CMakeFiles/commandlineSubdivider.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/linsanity/OneDrive/OpenMesh/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable commandlineSubdivider"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Apps/Subdivider/commandlineSubdivider && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/commandlineSubdivider.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Apps/Subdivider/commandlineSubdivider && /usr/local/Cellar/cmake/3.19.7/bin/cmake -E copy_if_different /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Apps/Subdivider/commandlineSubdivider/commandlineSubdivider /Users/linsanity/OneDrive/OpenMesh/build/Build/bin/commandlineSubdivider

# Rule to build all files generated by this target.
src/OpenMesh/Apps/Subdivider/commandlineSubdivider/CMakeFiles/commandlineSubdivider.dir/build: src/OpenMesh/Apps/Subdivider/commandlineSubdivider/commandlineSubdivider

.PHONY : src/OpenMesh/Apps/Subdivider/commandlineSubdivider/CMakeFiles/commandlineSubdivider.dir/build

src/OpenMesh/Apps/Subdivider/commandlineSubdivider/CMakeFiles/commandlineSubdivider.dir/clean:
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Apps/Subdivider/commandlineSubdivider && $(CMAKE_COMMAND) -P CMakeFiles/commandlineSubdivider.dir/cmake_clean.cmake
.PHONY : src/OpenMesh/Apps/Subdivider/commandlineSubdivider/CMakeFiles/commandlineSubdivider.dir/clean

src/OpenMesh/Apps/Subdivider/commandlineSubdivider/CMakeFiles/commandlineSubdivider.dir/depend:
	cd /Users/linsanity/OneDrive/OpenMesh/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/linsanity/OneDrive/OpenMesh /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Apps/Subdivider/commandlineSubdivider /Users/linsanity/OneDrive/OpenMesh/build /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Apps/Subdivider/commandlineSubdivider /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Apps/Subdivider/commandlineSubdivider/CMakeFiles/commandlineSubdivider.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/OpenMesh/Apps/Subdivider/commandlineSubdivider/CMakeFiles/commandlineSubdivider.dir/depend

