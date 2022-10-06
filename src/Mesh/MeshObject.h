///////////////////////////////////////////////////////////////
//
// MeshObject.h
//
//   An object represented as a group of meshes, mainly for rendering
//
// by Peng Song
//
// 29/Nov/2020
//
//
///////////////////////////////////////////////////////////////


#ifndef _MESH_OBJECT_H
#define _MESH_OBJECT_H

#include <igl/opengl/ViewerData.h>

using namespace std;
using namespace Eigen;

class Mesh;

class MeshObject
{

public:
    MeshObject() {};
    ~MeshObject() {};

    /// Ground
    vector<igl::opengl::ViewerData> CreateGround(Vector3d origin, double size, int gridNum, int sampNum);

    /// Axes
    vector<igl::opengl::ViewerData> CreateAxes(Vector3d origin, double size, int sampNum);

    /// Obj Model
    vector<igl::opengl::ViewerData> CreateObjModel(MatrixX3d verM, MatrixX3i triM);
    vector<igl::opengl::ViewerData> CreateObjModel(MatrixX3d verM, MatrixX3i triM, bool isShowLine);
    vector<igl::opengl::ViewerData> CreateObjModel_wireframe(MatrixX3d verM, MatrixX3i triM, MatrixX3d p1_mat, MatrixX3d p2_mat, VectorXd planarityList, bool isShowLine);
    vector<igl::opengl::ViewerData> CreateObjModel_wireframe(MatrixX3d verM, MatrixX3i triM, MatrixX3d p1_mat, MatrixX3d p2_mat, bool isShowLine);
    vector<igl::opengl::ViewerData> CreateObjModelTexture(MatrixX3d verM, MatrixX3i triM);

    /// Volume
    vector<igl::opengl::ViewerData> CreateVolume(MatrixXd voxelMinPts,
                                                 MatrixXd voxelMaxPts,
                                                 MatrixXd voxelCenPts);

    /// Fuction for testing MeshCreator
    vector<igl::opengl::ViewerData> Function_Test();

};


#endif //_MESH_OBJECT_H
