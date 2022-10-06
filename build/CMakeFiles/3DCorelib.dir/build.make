# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/yishin/Documents/Libigl_Project_Template

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yishin/Documents/Libigl_Project_Template/build

# Include any dependencies generated for this target.
include CMakeFiles/3DCorelib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/3DCorelib.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/3DCorelib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/3DCorelib.dir/flags.make

CMakeFiles/3DCorelib.dir/src/Core/Surface.cpp.o: CMakeFiles/3DCorelib.dir/flags.make
CMakeFiles/3DCorelib.dir/src/Core/Surface.cpp.o: ../src/Core/Surface.cpp
CMakeFiles/3DCorelib.dir/src/Core/Surface.cpp.o: CMakeFiles/3DCorelib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yishin/Documents/Libigl_Project_Template/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/3DCorelib.dir/src/Core/Surface.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/3DCorelib.dir/src/Core/Surface.cpp.o -MF CMakeFiles/3DCorelib.dir/src/Core/Surface.cpp.o.d -o CMakeFiles/3DCorelib.dir/src/Core/Surface.cpp.o -c /home/yishin/Documents/Libigl_Project_Template/src/Core/Surface.cpp

CMakeFiles/3DCorelib.dir/src/Core/Surface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/3DCorelib.dir/src/Core/Surface.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yishin/Documents/Libigl_Project_Template/src/Core/Surface.cpp > CMakeFiles/3DCorelib.dir/src/Core/Surface.cpp.i

CMakeFiles/3DCorelib.dir/src/Core/Surface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/3DCorelib.dir/src/Core/Surface.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yishin/Documents/Libigl_Project_Template/src/Core/Surface.cpp -o CMakeFiles/3DCorelib.dir/src/Core/Surface.cpp.s

CMakeFiles/3DCorelib.dir/src/Mesh/Mesh.cpp.o: CMakeFiles/3DCorelib.dir/flags.make
CMakeFiles/3DCorelib.dir/src/Mesh/Mesh.cpp.o: ../src/Mesh/Mesh.cpp
CMakeFiles/3DCorelib.dir/src/Mesh/Mesh.cpp.o: CMakeFiles/3DCorelib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yishin/Documents/Libigl_Project_Template/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/3DCorelib.dir/src/Mesh/Mesh.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/3DCorelib.dir/src/Mesh/Mesh.cpp.o -MF CMakeFiles/3DCorelib.dir/src/Mesh/Mesh.cpp.o.d -o CMakeFiles/3DCorelib.dir/src/Mesh/Mesh.cpp.o -c /home/yishin/Documents/Libigl_Project_Template/src/Mesh/Mesh.cpp

CMakeFiles/3DCorelib.dir/src/Mesh/Mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/3DCorelib.dir/src/Mesh/Mesh.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yishin/Documents/Libigl_Project_Template/src/Mesh/Mesh.cpp > CMakeFiles/3DCorelib.dir/src/Mesh/Mesh.cpp.i

CMakeFiles/3DCorelib.dir/src/Mesh/Mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/3DCorelib.dir/src/Mesh/Mesh.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yishin/Documents/Libigl_Project_Template/src/Mesh/Mesh.cpp -o CMakeFiles/3DCorelib.dir/src/Mesh/Mesh.cpp.s

CMakeFiles/3DCorelib.dir/src/Mesh/MeshBoolean.cpp.o: CMakeFiles/3DCorelib.dir/flags.make
CMakeFiles/3DCorelib.dir/src/Mesh/MeshBoolean.cpp.o: ../src/Mesh/MeshBoolean.cpp
CMakeFiles/3DCorelib.dir/src/Mesh/MeshBoolean.cpp.o: CMakeFiles/3DCorelib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yishin/Documents/Libigl_Project_Template/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/3DCorelib.dir/src/Mesh/MeshBoolean.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/3DCorelib.dir/src/Mesh/MeshBoolean.cpp.o -MF CMakeFiles/3DCorelib.dir/src/Mesh/MeshBoolean.cpp.o.d -o CMakeFiles/3DCorelib.dir/src/Mesh/MeshBoolean.cpp.o -c /home/yishin/Documents/Libigl_Project_Template/src/Mesh/MeshBoolean.cpp

CMakeFiles/3DCorelib.dir/src/Mesh/MeshBoolean.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/3DCorelib.dir/src/Mesh/MeshBoolean.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yishin/Documents/Libigl_Project_Template/src/Mesh/MeshBoolean.cpp > CMakeFiles/3DCorelib.dir/src/Mesh/MeshBoolean.cpp.i

CMakeFiles/3DCorelib.dir/src/Mesh/MeshBoolean.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/3DCorelib.dir/src/Mesh/MeshBoolean.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yishin/Documents/Libigl_Project_Template/src/Mesh/MeshBoolean.cpp -o CMakeFiles/3DCorelib.dir/src/Mesh/MeshBoolean.cpp.s

CMakeFiles/3DCorelib.dir/src/Mesh/MeshCreator.cpp.o: CMakeFiles/3DCorelib.dir/flags.make
CMakeFiles/3DCorelib.dir/src/Mesh/MeshCreator.cpp.o: ../src/Mesh/MeshCreator.cpp
CMakeFiles/3DCorelib.dir/src/Mesh/MeshCreator.cpp.o: CMakeFiles/3DCorelib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yishin/Documents/Libigl_Project_Template/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/3DCorelib.dir/src/Mesh/MeshCreator.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/3DCorelib.dir/src/Mesh/MeshCreator.cpp.o -MF CMakeFiles/3DCorelib.dir/src/Mesh/MeshCreator.cpp.o.d -o CMakeFiles/3DCorelib.dir/src/Mesh/MeshCreator.cpp.o -c /home/yishin/Documents/Libigl_Project_Template/src/Mesh/MeshCreator.cpp

CMakeFiles/3DCorelib.dir/src/Mesh/MeshCreator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/3DCorelib.dir/src/Mesh/MeshCreator.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yishin/Documents/Libigl_Project_Template/src/Mesh/MeshCreator.cpp > CMakeFiles/3DCorelib.dir/src/Mesh/MeshCreator.cpp.i

CMakeFiles/3DCorelib.dir/src/Mesh/MeshCreator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/3DCorelib.dir/src/Mesh/MeshCreator.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yishin/Documents/Libigl_Project_Template/src/Mesh/MeshCreator.cpp -o CMakeFiles/3DCorelib.dir/src/Mesh/MeshCreator.cpp.s

CMakeFiles/3DCorelib.dir/src/Mesh/MeshObject.cpp.o: CMakeFiles/3DCorelib.dir/flags.make
CMakeFiles/3DCorelib.dir/src/Mesh/MeshObject.cpp.o: ../src/Mesh/MeshObject.cpp
CMakeFiles/3DCorelib.dir/src/Mesh/MeshObject.cpp.o: CMakeFiles/3DCorelib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yishin/Documents/Libigl_Project_Template/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/3DCorelib.dir/src/Mesh/MeshObject.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/3DCorelib.dir/src/Mesh/MeshObject.cpp.o -MF CMakeFiles/3DCorelib.dir/src/Mesh/MeshObject.cpp.o.d -o CMakeFiles/3DCorelib.dir/src/Mesh/MeshObject.cpp.o -c /home/yishin/Documents/Libigl_Project_Template/src/Mesh/MeshObject.cpp

CMakeFiles/3DCorelib.dir/src/Mesh/MeshObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/3DCorelib.dir/src/Mesh/MeshObject.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yishin/Documents/Libigl_Project_Template/src/Mesh/MeshObject.cpp > CMakeFiles/3DCorelib.dir/src/Mesh/MeshObject.cpp.i

CMakeFiles/3DCorelib.dir/src/Mesh/MeshObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/3DCorelib.dir/src/Mesh/MeshObject.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yishin/Documents/Libigl_Project_Template/src/Mesh/MeshObject.cpp -o CMakeFiles/3DCorelib.dir/src/Mesh/MeshObject.cpp.s

CMakeFiles/3DCorelib.dir/src/Utility/HelpFunc.cpp.o: CMakeFiles/3DCorelib.dir/flags.make
CMakeFiles/3DCorelib.dir/src/Utility/HelpFunc.cpp.o: ../src/Utility/HelpFunc.cpp
CMakeFiles/3DCorelib.dir/src/Utility/HelpFunc.cpp.o: CMakeFiles/3DCorelib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yishin/Documents/Libigl_Project_Template/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/3DCorelib.dir/src/Utility/HelpFunc.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/3DCorelib.dir/src/Utility/HelpFunc.cpp.o -MF CMakeFiles/3DCorelib.dir/src/Utility/HelpFunc.cpp.o.d -o CMakeFiles/3DCorelib.dir/src/Utility/HelpFunc.cpp.o -c /home/yishin/Documents/Libigl_Project_Template/src/Utility/HelpFunc.cpp

CMakeFiles/3DCorelib.dir/src/Utility/HelpFunc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/3DCorelib.dir/src/Utility/HelpFunc.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yishin/Documents/Libigl_Project_Template/src/Utility/HelpFunc.cpp > CMakeFiles/3DCorelib.dir/src/Utility/HelpFunc.cpp.i

CMakeFiles/3DCorelib.dir/src/Utility/HelpFunc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/3DCorelib.dir/src/Utility/HelpFunc.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yishin/Documents/Libigl_Project_Template/src/Utility/HelpFunc.cpp -o CMakeFiles/3DCorelib.dir/src/Utility/HelpFunc.cpp.s

CMakeFiles/3DCorelib.dir/src/Utility/HelpStruct.cpp.o: CMakeFiles/3DCorelib.dir/flags.make
CMakeFiles/3DCorelib.dir/src/Utility/HelpStruct.cpp.o: ../src/Utility/HelpStruct.cpp
CMakeFiles/3DCorelib.dir/src/Utility/HelpStruct.cpp.o: CMakeFiles/3DCorelib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yishin/Documents/Libigl_Project_Template/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/3DCorelib.dir/src/Utility/HelpStruct.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/3DCorelib.dir/src/Utility/HelpStruct.cpp.o -MF CMakeFiles/3DCorelib.dir/src/Utility/HelpStruct.cpp.o.d -o CMakeFiles/3DCorelib.dir/src/Utility/HelpStruct.cpp.o -c /home/yishin/Documents/Libigl_Project_Template/src/Utility/HelpStruct.cpp

CMakeFiles/3DCorelib.dir/src/Utility/HelpStruct.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/3DCorelib.dir/src/Utility/HelpStruct.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yishin/Documents/Libigl_Project_Template/src/Utility/HelpStruct.cpp > CMakeFiles/3DCorelib.dir/src/Utility/HelpStruct.cpp.i

CMakeFiles/3DCorelib.dir/src/Utility/HelpStruct.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/3DCorelib.dir/src/Utility/HelpStruct.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yishin/Documents/Libigl_Project_Template/src/Utility/HelpStruct.cpp -o CMakeFiles/3DCorelib.dir/src/Utility/HelpStruct.cpp.s

# Object files for target 3DCorelib
3DCorelib_OBJECTS = \
"CMakeFiles/3DCorelib.dir/src/Core/Surface.cpp.o" \
"CMakeFiles/3DCorelib.dir/src/Mesh/Mesh.cpp.o" \
"CMakeFiles/3DCorelib.dir/src/Mesh/MeshBoolean.cpp.o" \
"CMakeFiles/3DCorelib.dir/src/Mesh/MeshCreator.cpp.o" \
"CMakeFiles/3DCorelib.dir/src/Mesh/MeshObject.cpp.o" \
"CMakeFiles/3DCorelib.dir/src/Utility/HelpFunc.cpp.o" \
"CMakeFiles/3DCorelib.dir/src/Utility/HelpStruct.cpp.o"

# External object files for target 3DCorelib
3DCorelib_EXTERNAL_OBJECTS =

lib3DCorelib.a: CMakeFiles/3DCorelib.dir/src/Core/Surface.cpp.o
lib3DCorelib.a: CMakeFiles/3DCorelib.dir/src/Mesh/Mesh.cpp.o
lib3DCorelib.a: CMakeFiles/3DCorelib.dir/src/Mesh/MeshBoolean.cpp.o
lib3DCorelib.a: CMakeFiles/3DCorelib.dir/src/Mesh/MeshCreator.cpp.o
lib3DCorelib.a: CMakeFiles/3DCorelib.dir/src/Mesh/MeshObject.cpp.o
lib3DCorelib.a: CMakeFiles/3DCorelib.dir/src/Utility/HelpFunc.cpp.o
lib3DCorelib.a: CMakeFiles/3DCorelib.dir/src/Utility/HelpStruct.cpp.o
lib3DCorelib.a: CMakeFiles/3DCorelib.dir/build.make
lib3DCorelib.a: CMakeFiles/3DCorelib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yishin/Documents/Libigl_Project_Template/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX static library lib3DCorelib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/3DCorelib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/3DCorelib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/3DCorelib.dir/build: lib3DCorelib.a
.PHONY : CMakeFiles/3DCorelib.dir/build

CMakeFiles/3DCorelib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/3DCorelib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/3DCorelib.dir/clean

CMakeFiles/3DCorelib.dir/depend:
	cd /home/yishin/Documents/Libigl_Project_Template/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yishin/Documents/Libigl_Project_Template /home/yishin/Documents/Libigl_Project_Template /home/yishin/Documents/Libigl_Project_Template/build /home/yishin/Documents/Libigl_Project_Template/build /home/yishin/Documents/Libigl_Project_Template/build/CMakeFiles/3DCorelib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/3DCorelib.dir/depend
