# Install script for directory: /Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools

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
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenMesh/Tools/Decimater" TYPE FILE FILES
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/BaseDecimaterT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/BaseDecimaterT_impl.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/CollapseInfoT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/DecimaterT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/DecimaterT_impl.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/McDecimaterT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/McDecimaterT_impl.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/MixedDecimaterT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/MixedDecimaterT_impl.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/ModAspectRatioT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/ModAspectRatioT_impl.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/ModBaseT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/ModEdgeLengthT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/ModEdgeLengthT_impl.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/ModHausdorffT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/ModHausdorffT_impl.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/ModIndependentSetsT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/ModNormalDeviationT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/ModNormalFlippingT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/ModProgMeshT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/ModProgMeshT_impl.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/ModQuadricT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/ModQuadricT_impl.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/ModRoundnessT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Decimater/Observer.hh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenMesh/Tools/Dualizer" TYPE FILE FILES "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Dualizer/meshDualT.hh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenMesh/Tools/Kernel_OSG" TYPE FILE FILES
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Kernel_OSG/ArrayKernelT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Kernel_OSG/AttribKernelT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Kernel_OSG/PropertyKernel.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Kernel_OSG/PropertyT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Kernel_OSG/Traits.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Kernel_OSG/TriMesh_OSGArrayKernelT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Kernel_OSG/VectorAdapter.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Kernel_OSG/bindT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Kernel_OSG/color_cast.hh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenMesh/Tools/Smoother" TYPE FILE FILES
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Smoother/JacobiLaplaceSmootherT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Smoother/JacobiLaplaceSmootherT_impl.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Smoother/LaplaceSmootherT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Smoother/LaplaceSmootherT_impl.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Smoother/SmootherT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Smoother/SmootherT_impl.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Smoother/smooth_mesh.hh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenMesh/Tools/Subdivider/Adaptive/Composite" TYPE FILE FILES
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Subdivider/Adaptive/Composite/CompositeT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Subdivider/Adaptive/Composite/CompositeT_impl.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Subdivider/Adaptive/Composite/CompositeTraits.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Subdivider/Adaptive/Composite/RuleInterfaceT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Subdivider/Adaptive/Composite/RulesT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Subdivider/Adaptive/Composite/RulesT_impl.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Subdivider/Adaptive/Composite/Traits.hh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenMesh/Tools/Subdivider/Uniform" TYPE FILE FILES
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Subdivider/Uniform/CatmullClarkT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Subdivider/Uniform/CatmullClarkT_impl.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Subdivider/Uniform/CompositeLoopT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Subdivider/Uniform/CompositeSqrt3T.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Subdivider/Uniform/LongestEdgeT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Subdivider/Uniform/LoopT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Subdivider/Uniform/MidpointT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Subdivider/Uniform/ModifiedButterFlyT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Subdivider/Uniform/Sqrt3InterpolatingSubdividerLabsikGreinerT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Subdivider/Uniform/Sqrt3T.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Subdivider/Uniform/SubdividerT.hh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenMesh/Tools/Subdivider/Uniform/Composite" TYPE FILE FILES
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Subdivider/Uniform/Composite/CompositeT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Subdivider/Uniform/Composite/CompositeT_impl.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Subdivider/Uniform/Composite/CompositeTraits.hh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenMesh/Tools/Utils" TYPE FILE FILES
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Utils/Config.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Utils/GLConstAsString.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Utils/Gnuplot.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Utils/HeapT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Utils/MeshCheckerT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Utils/MeshCheckerT_impl.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Utils/NumLimitsT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Utils/StripifierT.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Utils/StripifierT_impl.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Utils/TestingFramework.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Utils/Timer.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Utils/conio.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/Utils/getopt.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenMesh/Tools/VDPM" TYPE FILE FILES
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/VDPM/MeshTraits.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/VDPM/StreamingDef.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/VDPM/VFront.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/VDPM/VHierarchy.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/VDPM/VHierarchyNode.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/VDPM/VHierarchyNodeIndex.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/VDPM/VHierarchyWindow.hh"
    "/Users/sutd-cgl/Documents/GitHub/test/ext/OpenMesh/src/OpenMesh/Tools/VDPM/ViewingParameters.hh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/sutd-cgl/Documents/GitHub/test/build/ext/OpenMesh/src/OpenMesh/Tools/libOpenMeshTools.9.1.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libOpenMeshTools.9.1.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libOpenMeshTools.9.1.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/sutd-cgl/Documents/GitHub/test/build/ext/OpenMesh/src/OpenMesh/Core"
      -add_rpath "@executable_path/../lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libOpenMeshTools.9.1.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libOpenMeshTools.9.1.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/sutd-cgl/Documents/GitHub/test/build/ext/OpenMesh/src/OpenMesh/Tools/libOpenMeshTools.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libOpenMeshTools.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libOpenMeshTools.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/sutd-cgl/Documents/GitHub/test/build/ext/OpenMesh/src/OpenMesh/Core"
      -add_rpath "@executable_path/../lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libOpenMeshTools.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libOpenMeshTools.dylib")
    endif()
  endif()
endif()

