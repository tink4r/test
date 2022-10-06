///////////////////////////////////////////////////////////////
//
// libigl_Render.cpp
//
//   Rendering various 3D contents with libigl
//
// by Peng Song
//
// 01/Dec/2020
//
//
///////////////////////////////////////////////////////////////


#include <utility>
#include <vector>
#include <iostream>
#include <Eigen/Eigen>
#include "libigl_Render.h"
#include "Mesh/MeshObject.h"
#include "Utility/HelpFunc.h"

///=========================================================================================///
///                                        Initialization
///=========================================================================================///

libigl_Render::libigl_Render()
{
    groundMeshNum = 0;
    axesMeshNum = 0;

    objMeshNum = 0;
    processedObjMeshNum = 0;
}

libigl_Render::~libigl_Render()
{

}



///=========================================================================================///
///                                       Render Objects
///=========================================================================================///

void libigl_Render::RenderScene(iglViewer &viewer)
{
//    DrawMechanism(viewer, std::move(myViewerData)); // We have to draw mechanism first (for animating it properly)
    DrawGround(viewer, Vector3d(0,0,0), 4.0, 10, 10);
    DrawWorldAxes(viewer, Vector3d(0,0,0), 2.0, 20);

    //DrawMeshForDebug(viewer);
}

void libigl_Render::DrawGround(iglViewer &viewer, Vector3d origin, double size, int gridNum, int sampNum)
{
    MeshObject meshObject;
    vector<igl::opengl::ViewerData> viewerDataList =  meshObject.CreateGround(std::move(origin), size, gridNum, sampNum);

    AppendDataToViewer( viewer, viewerDataList );

    groundMeshNum = viewerDataList.size();
}

void libigl_Render::DrawWorldAxes(iglViewer &viewer, Vector3d origin, double size, int sampNum)
{
    MeshObject meshObject;
    vector<igl::opengl::ViewerData> viewerDataList =  meshObject.CreateAxes(std::move(origin), size, sampNum);

    AppendDataToViewer( viewer, viewerDataList );

    axesMeshNum = viewerDataList.size();
}

void libigl_Render::DrawObjModel(iglViewer &viewer, const PolyMesh polyMesh)
{
    /// Prepare the triangle surface data
    MatrixXd verM;
    MatrixXi triM;

    PolyMesh2Matrix(polyMesh, verM, triM);

    /// Draw object
    MeshObject meshObject;

    vector<igl::opengl::ViewerData> viewerDataList = meshObject.CreateObjModel(verM, triM);

    AppendDataToViewer(viewer, viewerDataList);

    objMeshNum = viewerDataList.size();
}

void libigl_Render::DrawProcessedModel(iglViewer &viewer, const PolyMesh polyMesh)
{
    /// Prepare the triangle surface data
    MatrixXd verM;
    MatrixXi triM;

    PolyMesh2Matrix(polyMesh, verM, triM);

    /// Draw object
    MeshObject meshObject;

    vector<igl::opengl::ViewerData> viewerDataList = meshObject.CreateObjModel(verM, triM, true);

    AppendDataToViewer(viewer, viewerDataList);

    processedObjMeshNum = viewerDataList.size();
}




///=========================================================================================///
///                                     Show/hide Objects
///=========================================================================================///


void libigl_Render::ShowGround(iglViewer &viewer, bool isVisible) const
{
    for(int i = 0; i <= groundMeshNum; i++)
    {
        viewer.data_list[i].is_visible = isVisible;
    }
}

void libigl_Render::ShowAxes(iglViewer &viewer, bool isVisible) const
{
    for(int i = groundMeshNum + 1; i <= (groundMeshNum + axesMeshNum); i++)
    {
        viewer.data_list[i].is_visible = isVisible;
    }
}

void libigl_Render::ShowObjModel(iglViewer &viewer, bool isVisible)
{
    if (objMeshNum == 0)
        return;

    for(int i = groundMeshNum + axesMeshNum + 1; i <= (groundMeshNum + axesMeshNum + objMeshNum); i++)
    {
        viewer.data_list[i].is_visible = isVisible;
    }
}

void libigl_Render::ShowProcessedObjModel(iglViewer &viewer, bool isVisible)
{
    if (processedObjMeshNum == 0)
        return;

    for(int i = groundMeshNum + axesMeshNum + objMeshNum + 1; i <= (groundMeshNum + axesMeshNum + objMeshNum + processedObjMeshNum); i++)
    {
        viewer.data_list[i].is_visible = isVisible;
    }
}

///=========================================================================================///
///                                        Set Camera
///=========================================================================================///

void libigl_Render::SetCamera(iglViewer &viewer, float zoom, Vector3f eyePos)
{
    // change the camera parameters here
    // the rest of the parameters can be found at line 127(ViewerCore.h)

    viewer.core().camera_zoom  =  zoom;
    viewer.core().camera_eye   =  eyePos;
}




///=========================================================================================///
///                                        Ground
///=========================================================================================///

void libigl_Render::AppendDataToViewer(iglViewer &viewer, vector<igl::opengl::ViewerData> viewerDataList)
{
    for (const auto & i : viewerDataList)
    {
        viewer.data_list.push_back( i );
    }
}


void libigl_Render::ClearViewer(iglViewer &viewer)
{
    if ( (objMeshNum + processedObjMeshNum) != 0)
    {
        ClearMesh(viewer, (objMeshNum + processedObjMeshNum));

        objMeshNum = 0;
        processedObjMeshNum = 0;
    }
}

// Clear last N meshes added to viewerDataList recently
void libigl_Render::ClearMesh(iglViewer &viewer,int meshNum)
{
    for (int i = 0; i < meshNum; i++)
    {
        viewer.selected_data_index = viewer.data_list.size()-1;
        viewer.erase_mesh(viewer.selected_data_index);
        viewer.data(viewer.selected_data_index).clear();
    }
}
