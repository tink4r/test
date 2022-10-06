///////////////////////////////////////////////////////////////
//
// HelpTypedef.h
//
//   Rename some datatypes that are too long, e.g., those in libigl
//
// by Peng SONG
//
// 03/Dec/2020
//
//
///////////////////////////////////////////////////////////////


#ifndef _HELP_TYPEDEF_H
#define _HELP_TYPEDEF_H

#include <igl/boundary_loop.h>
#include <igl/readOBJ.h>
#include <igl/lscm.h>
#include <igl/rotation_matrix_from_directions.h>
#include <igl/opengl/glfw/Viewer.h>
#include <igl/opengl/ViewerData.h>
#include <igl/boundary_loop.h>
#include <igl/jet.h>
#include <igl/intrinsic_delaunay_triangulation.h>
#include <igl/intrinsic_delaunay_cotmatrix.h>

#include <OpenMesh/Core/Mesh/PolyMesh_ArrayKernelT.hh>
#include <OpenMesh/Core/Mesh/TriMesh_ArrayKernelT.hh>

///////////////////////////////////////////////////////////////////////


typedef igl::opengl::glfw::Viewer      iglViewer;
typedef igl::opengl::ViewerData        iglViewerData;

typedef OpenMesh::PolyMesh_ArrayKernelT<>  PolyMesh;
typedef OpenMesh::TriMesh_ArrayKernelT<>   TriMesh;


///////////////////////////////////////////////////////////////////////


#endif //_HELP_TYPEDEF_H
