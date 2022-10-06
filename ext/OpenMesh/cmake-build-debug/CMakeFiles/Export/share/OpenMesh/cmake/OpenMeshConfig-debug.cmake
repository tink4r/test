#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "OpenMeshCore" for configuration "Debug"
set_property(TARGET OpenMeshCore APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(OpenMeshCore PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libOpenMeshCored.9.1.dylib"
  IMPORTED_SONAME_DEBUG "@rpath/libOpenMeshCored.9.1.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS OpenMeshCore )
list(APPEND _IMPORT_CHECK_FILES_FOR_OpenMeshCore "${_IMPORT_PREFIX}/lib/libOpenMeshCored.9.1.dylib" )

# Import target "OpenMeshTools" for configuration "Debug"
set_property(TARGET OpenMeshTools APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(OpenMeshTools PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libOpenMeshToolsd.9.1.dylib"
  IMPORTED_SONAME_DEBUG "@rpath/libOpenMeshToolsd.9.1.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS OpenMeshTools )
list(APPEND _IMPORT_CHECK_FILES_FOR_OpenMeshTools "${_IMPORT_PREFIX}/lib/libOpenMeshToolsd.9.1.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
