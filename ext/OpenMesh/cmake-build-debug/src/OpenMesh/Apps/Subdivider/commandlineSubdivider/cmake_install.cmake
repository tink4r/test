# Install script for directory: /Users/linsanity/OneDrive/OpenMesh/src/OpenMesh/Apps/Subdivider/commandlineSubdivider

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/linsanity/OneDrive/OpenMesh/cmake-build-debug/src/OpenMesh/Apps/Subdivider/commandlineSubdivider/commandlineSubdivider")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/commandlineSubdivider" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/commandlineSubdivider")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/linsanity/OneDrive/OpenMesh/cmake-build-debug/src/OpenMesh/Tools"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/commandlineSubdivider")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/linsanity/OneDrive/OpenMesh/cmake-build-debug/src/OpenMesh/Core"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/commandlineSubdivider")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "@executable_path/../lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/commandlineSubdivider")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/commandlineSubdivider")
    endif()
  endif()
endif()

