cmake_minimum_required(VERSION 3.1)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

#OpenMesh
find_package(OpenMesh)

#PUGIXML
# find_package(PUGIXML REQUIRED)
find_package(PugiXML)

#LIBIGL
find_package(LIBIGL REQUIRED QUIET)
if(LIBIGL_FOUND)
    add_definitions(-DLIBIGL_FOUND=1)
endif()

set(ext_include
        ${PUGIXML_INCLUDE_DIR}
        ${LIBIGL_INCLUDE_DIR}
        ${OPENMESH_INCLUDE_DIR}
        PARENT_SCOPE)

set(ext_lib pugixml
        igl::core
        igl::cgal
        igl::opengl_glfw
        igl::opengl_glfw_imgui
        OpenMeshCore
        OpenMeshTools
        PARENT_SCOPE)