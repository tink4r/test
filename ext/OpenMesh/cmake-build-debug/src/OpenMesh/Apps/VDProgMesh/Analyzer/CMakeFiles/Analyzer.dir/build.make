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

# Include any dependencies generated for this target.
include src/OpenMesh/Apps/VDProgMesh/Analyzer/CMakeFiles/Analyzer.dir/depend.make

# Include the progress variables for this target.
include src/OpenMesh/Apps/VDProgMesh/Analyzer/CMakeFiles/Analyzer.dir/progress.make

# Include the compile flags for this target's objects.
include src/OpenMesh/Apps/VDProgMesh/Analyzer/CMakeFiles/Analyzer.dir/flags.make

src/OpenMesh/Apps/VDProgMesh/Analyzer/CMakeFiles/Analyzer.dir/vdpmanalyzer.cc.o: src/OpenMesh/Apps/VDProgMesh/Analyzer/CMakeFiles/Analyzer.dir/flags.make
src/OpenMesh/Apps/VDProgMesh/Analyzer/CMakeFiles/Analyzer.dir/vdpmanalyzer.cc.o: ../src/OpenMesh/Apps/VDProgMesh/Analyzer/vdpmanalyzer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/linsanity/OneDrive/OpenMesh/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/OpenMesh/Apps/VDProgMesh/Analyzer/CMakeFiles/Analyzer.dir/vdpmanalyzer.cc.o"
	cd /Users/linsanity/OneDrive/OpenMesh/cmake-build-debug/src/OpenMesh/Apps/VDProgMesh/Analyzer && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Analyzer.dir/vdpmanalyzer.cc.o -c /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Apps/VDProgMesh/Analyzer/vdpmanalyzer.cc

src/OpenMesh/Apps/VDProgMesh/Analyzer/CMakeFiles/Analyzer.dir/vdpmanalyzer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Analyzer.dir/vdpmanalyzer.cc.i"
	cd /Users/linsanity/OneDrive/OpenMesh/cmake-build-debug/src/OpenMesh/Apps/VDProgMesh/Analyzer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Apps/VDProgMesh/Analyzer/vdpmanalyzer.cc > CMakeFiles/Analyzer.dir/vdpmanalyzer.cc.i

src/OpenMesh/Apps/VDProgMesh/Analyzer/CMakeFiles/Analyzer.dir/vdpmanalyzer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Analyzer.dir/vdpmanalyzer.cc.s"
	cd /Users/linsanity/OneDrive/OpenMesh/cmake-build-debug/src/OpenMesh/Apps/VDProgMesh/Analyzer && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Apps/VDProgMesh/Analyzer/vdpmanalyzer.cc -o CMakeFiles/Analyzer.dir/vdpmanalyzer.cc.s

# Object files for target Analyzer
Analyzer_OBJECTS = \
"CMakeFiles/Analyzer.dir/vdpmanalyzer.cc.o"

# External object files for target Analyzer
Analyzer_EXTERNAL_OBJECTS =

src/OpenMesh/Apps/VDProgMesh/Analyzer/Analyzer: src/OpenMesh/Apps/VDProgMesh/Analyzer/CMakeFiles/Analyzer.dir/vdpmanalyzer.cc.o
src/OpenMesh/Apps/VDProgMesh/Analyzer/Analyzer: src/OpenMesh/Apps/VDProgMesh/Analyzer/CMakeFiles/Analyzer.dir/build.make
src/OpenMesh/Apps/VDProgMesh/Analyzer/Analyzer: src/OpenMesh/Tools/libOpenMeshToolsd.9.1.dylib
src/OpenMesh/Apps/VDProgMesh/Analyzer/Analyzer: src/OpenMesh/Core/libOpenMeshCored.9.1.dylib
src/OpenMesh/Apps/VDProgMesh/Analyzer/Analyzer: src/OpenMesh/Apps/VDProgMesh/Analyzer/CMakeFiles/Analyzer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/linsanity/OneDrive/OpenMesh/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Analyzer"
	cd /Users/linsanity/OneDrive/OpenMesh/cmake-build-debug/src/OpenMesh/Apps/VDProgMesh/Analyzer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Analyzer.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/linsanity/OneDrive/OpenMesh/cmake-build-debug/src/OpenMesh/Apps/VDProgMesh/Analyzer && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E copy_if_different /Users/linsanity/OneDrive/OpenMesh/cmake-build-debug/src/OpenMesh/Apps/VDProgMesh/Analyzer/Analyzer /Users/linsanity/OneDrive/OpenMesh/cmake-build-debug/Build/bin/Analyzer

# Rule to build all files generated by this target.
src/OpenMesh/Apps/VDProgMesh/Analyzer/CMakeFiles/Analyzer.dir/build: src/OpenMesh/Apps/VDProgMesh/Analyzer/Analyzer

.PHONY : src/OpenMesh/Apps/VDProgMesh/Analyzer/CMakeFiles/Analyzer.dir/build

src/OpenMesh/Apps/VDProgMesh/Analyzer/CMakeFiles/Analyzer.dir/clean:
	cd /Users/linsanity/OneDrive/OpenMesh/cmake-build-debug/src/OpenMesh/Apps/VDProgMesh/Analyzer && $(CMAKE_COMMAND) -P CMakeFiles/Analyzer.dir/cmake_clean.cmake
.PHONY : src/OpenMesh/Apps/VDProgMesh/Analyzer/CMakeFiles/Analyzer.dir/clean

src/OpenMesh/Apps/VDProgMesh/Analyzer/CMakeFiles/Analyzer.dir/depend:
	cd /Users/linsanity/OneDrive/OpenMesh/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/linsanity/OneDrive/OpenMesh /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Apps/VDProgMesh/Analyzer /Users/linsanity/OneDrive/OpenMesh/cmake-build-debug /Users/linsanity/OneDrive/OpenMesh/cmake-build-debug/src/OpenMesh/Apps/VDProgMesh/Analyzer /Users/linsanity/OneDrive/OpenMesh/cmake-build-debug/src/OpenMesh/Apps/VDProgMesh/Analyzer/CMakeFiles/Analyzer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/OpenMesh/Apps/VDProgMesh/Analyzer/CMakeFiles/Analyzer.dir/depend
