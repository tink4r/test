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
include src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/depend.make

# Include the progress variables for this target.
include src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/progress.make

# Include the compile flags for this target's objects.
include src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/flags.make

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Decimater/Observer.cc.o: src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/flags.make
src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Decimater/Observer.cc.o: ../src/OpenMesh/Tools/Decimater/Observer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/linsanity/OneDrive/OpenMesh/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Decimater/Observer.cc.o"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenMeshToolsStatic.dir/Decimater/Observer.cc.o -c /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/Decimater/Observer.cc

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Decimater/Observer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenMeshToolsStatic.dir/Decimater/Observer.cc.i"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/Decimater/Observer.cc > CMakeFiles/OpenMeshToolsStatic.dir/Decimater/Observer.cc.i

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Decimater/Observer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenMeshToolsStatic.dir/Decimater/Observer.cc.s"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/Decimater/Observer.cc -o CMakeFiles/OpenMeshToolsStatic.dir/Decimater/Observer.cc.s

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Utils/Gnuplot.cc.o: src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/flags.make
src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Utils/Gnuplot.cc.o: ../src/OpenMesh/Tools/Utils/Gnuplot.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/linsanity/OneDrive/OpenMesh/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Utils/Gnuplot.cc.o"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenMeshToolsStatic.dir/Utils/Gnuplot.cc.o -c /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/Utils/Gnuplot.cc

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Utils/Gnuplot.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenMeshToolsStatic.dir/Utils/Gnuplot.cc.i"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/Utils/Gnuplot.cc > CMakeFiles/OpenMeshToolsStatic.dir/Utils/Gnuplot.cc.i

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Utils/Gnuplot.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenMeshToolsStatic.dir/Utils/Gnuplot.cc.s"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/Utils/Gnuplot.cc -o CMakeFiles/OpenMeshToolsStatic.dir/Utils/Gnuplot.cc.s

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Utils/Timer.cc.o: src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/flags.make
src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Utils/Timer.cc.o: ../src/OpenMesh/Tools/Utils/Timer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/linsanity/OneDrive/OpenMesh/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Utils/Timer.cc.o"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenMeshToolsStatic.dir/Utils/Timer.cc.o -c /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/Utils/Timer.cc

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Utils/Timer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenMeshToolsStatic.dir/Utils/Timer.cc.i"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/Utils/Timer.cc > CMakeFiles/OpenMeshToolsStatic.dir/Utils/Timer.cc.i

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Utils/Timer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenMeshToolsStatic.dir/Utils/Timer.cc.s"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/Utils/Timer.cc -o CMakeFiles/OpenMeshToolsStatic.dir/Utils/Timer.cc.s

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Utils/conio.cc.o: src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/flags.make
src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Utils/conio.cc.o: ../src/OpenMesh/Tools/Utils/conio.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/linsanity/OneDrive/OpenMesh/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Utils/conio.cc.o"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenMeshToolsStatic.dir/Utils/conio.cc.o -c /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/Utils/conio.cc

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Utils/conio.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenMeshToolsStatic.dir/Utils/conio.cc.i"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/Utils/conio.cc > CMakeFiles/OpenMeshToolsStatic.dir/Utils/conio.cc.i

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Utils/conio.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenMeshToolsStatic.dir/Utils/conio.cc.s"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/Utils/conio.cc -o CMakeFiles/OpenMeshToolsStatic.dir/Utils/conio.cc.s

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VFront.cc.o: src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/flags.make
src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VFront.cc.o: ../src/OpenMesh/Tools/VDPM/VFront.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/linsanity/OneDrive/OpenMesh/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VFront.cc.o"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VFront.cc.o -c /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/VDPM/VFront.cc

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VFront.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VFront.cc.i"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/VDPM/VFront.cc > CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VFront.cc.i

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VFront.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VFront.cc.s"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/VDPM/VFront.cc -o CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VFront.cc.s

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchy.cc.o: src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/flags.make
src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchy.cc.o: ../src/OpenMesh/Tools/VDPM/VHierarchy.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/linsanity/OneDrive/OpenMesh/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchy.cc.o"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchy.cc.o -c /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/VDPM/VHierarchy.cc

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchy.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchy.cc.i"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/VDPM/VHierarchy.cc > CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchy.cc.i

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchy.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchy.cc.s"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/VDPM/VHierarchy.cc -o CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchy.cc.s

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyNodeIndex.cc.o: src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/flags.make
src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyNodeIndex.cc.o: ../src/OpenMesh/Tools/VDPM/VHierarchyNodeIndex.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/linsanity/OneDrive/OpenMesh/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyNodeIndex.cc.o"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyNodeIndex.cc.o -c /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/VDPM/VHierarchyNodeIndex.cc

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyNodeIndex.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyNodeIndex.cc.i"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/VDPM/VHierarchyNodeIndex.cc > CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyNodeIndex.cc.i

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyNodeIndex.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyNodeIndex.cc.s"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/VDPM/VHierarchyNodeIndex.cc -o CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyNodeIndex.cc.s

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyWindow.cc.o: src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/flags.make
src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyWindow.cc.o: ../src/OpenMesh/Tools/VDPM/VHierarchyWindow.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/linsanity/OneDrive/OpenMesh/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyWindow.cc.o"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyWindow.cc.o -c /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/VDPM/VHierarchyWindow.cc

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyWindow.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyWindow.cc.i"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/VDPM/VHierarchyWindow.cc > CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyWindow.cc.i

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyWindow.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyWindow.cc.s"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/VDPM/VHierarchyWindow.cc -o CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyWindow.cc.s

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/ViewingParameters.cc.o: src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/flags.make
src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/ViewingParameters.cc.o: ../src/OpenMesh/Tools/VDPM/ViewingParameters.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/linsanity/OneDrive/OpenMesh/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/ViewingParameters.cc.o"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenMeshToolsStatic.dir/VDPM/ViewingParameters.cc.o -c /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/VDPM/ViewingParameters.cc

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/ViewingParameters.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenMeshToolsStatic.dir/VDPM/ViewingParameters.cc.i"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/VDPM/ViewingParameters.cc > CMakeFiles/OpenMeshToolsStatic.dir/VDPM/ViewingParameters.cc.i

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/ViewingParameters.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenMeshToolsStatic.dir/VDPM/ViewingParameters.cc.s"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools/VDPM/ViewingParameters.cc -o CMakeFiles/OpenMeshToolsStatic.dir/VDPM/ViewingParameters.cc.s

# Object files for target OpenMeshToolsStatic
OpenMeshToolsStatic_OBJECTS = \
"CMakeFiles/OpenMeshToolsStatic.dir/Decimater/Observer.cc.o" \
"CMakeFiles/OpenMeshToolsStatic.dir/Utils/Gnuplot.cc.o" \
"CMakeFiles/OpenMeshToolsStatic.dir/Utils/Timer.cc.o" \
"CMakeFiles/OpenMeshToolsStatic.dir/Utils/conio.cc.o" \
"CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VFront.cc.o" \
"CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchy.cc.o" \
"CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyNodeIndex.cc.o" \
"CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyWindow.cc.o" \
"CMakeFiles/OpenMeshToolsStatic.dir/VDPM/ViewingParameters.cc.o"

# External object files for target OpenMeshToolsStatic
OpenMeshToolsStatic_EXTERNAL_OBJECTS =

src/OpenMesh/Tools/libOpenMeshTools.a: src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Decimater/Observer.cc.o
src/OpenMesh/Tools/libOpenMeshTools.a: src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Utils/Gnuplot.cc.o
src/OpenMesh/Tools/libOpenMeshTools.a: src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Utils/Timer.cc.o
src/OpenMesh/Tools/libOpenMeshTools.a: src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/Utils/conio.cc.o
src/OpenMesh/Tools/libOpenMeshTools.a: src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VFront.cc.o
src/OpenMesh/Tools/libOpenMeshTools.a: src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchy.cc.o
src/OpenMesh/Tools/libOpenMeshTools.a: src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyNodeIndex.cc.o
src/OpenMesh/Tools/libOpenMeshTools.a: src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/VHierarchyWindow.cc.o
src/OpenMesh/Tools/libOpenMeshTools.a: src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/VDPM/ViewingParameters.cc.o
src/OpenMesh/Tools/libOpenMeshTools.a: src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/build.make
src/OpenMesh/Tools/libOpenMeshTools.a: src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/linsanity/OneDrive/OpenMesh/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX static library libOpenMeshTools.a"
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && $(CMAKE_COMMAND) -P CMakeFiles/OpenMeshToolsStatic.dir/cmake_clean_target.cmake
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OpenMeshToolsStatic.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && /usr/local/Cellar/cmake/3.19.7/bin/cmake -E copy_if_different /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools/libOpenMeshTools.a /Users/linsanity/OneDrive/OpenMesh/build/Build/lib/libOpenMeshTools.a

# Rule to build all files generated by this target.
src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/build: src/OpenMesh/Tools/libOpenMeshTools.a

.PHONY : src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/build

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/clean:
	cd /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools && $(CMAKE_COMMAND) -P CMakeFiles/OpenMeshToolsStatic.dir/cmake_clean.cmake
.PHONY : src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/clean

src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/depend:
	cd /Users/linsanity/OneDrive/OpenMesh/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/linsanity/OneDrive/OpenMesh /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Tools /Users/linsanity/OneDrive/OpenMesh/build /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools /Users/linsanity/OneDrive/OpenMesh/build/src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/OpenMesh/Tools/CMakeFiles/OpenMeshToolsStatic.dir/depend

