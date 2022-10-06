///////////////////////////////////////////////////////////////
//
// libigl_Render.h
//
//   Rendering various 3D contents with libigl
//
// by Peng Song
//
// 01/Dec/2020
//
//
///////////////////////////////////////////////////////////////


#ifndef _LIBIGL_RENDER_H
#define _LIBIGL_RENDER_H


#include "Utility/HelpTypedef.h"
#include "Utility/HelpDefine.h"


using namespace std;
using namespace Eigen;



class libigl_Render
{
public:
    int groundMeshNum;
    int axesMeshNum;

    int objMeshNum;
    int processedObjMeshNum;

public:
    libigl_Render();
    ~libigl_Render();

    /// Render Objects
    void RenderScene(iglViewer &viewer);
    void DrawGround(iglViewer &viewer, Vector3d origin, double size, int gridNum, int sampNum);
    void DrawWorldAxes(iglViewer &viewer, Vector3d origin, double size, int sampNum);
    void DrawObjModel(iglViewer &viewer, const PolyMesh polyMesh);
    void DrawProcessedModel(iglViewer &viewer, const PolyMesh polyMesh);

    /// Show/hide Objects
    void ShowGround(iglViewer &viewer,bool isVisible) const;
    void ShowAxes(iglViewer &viewer, bool isVisible) const;
    void ShowObjModel(iglViewer &viewer, bool isVisible) ;
    void ShowProcessedObjModel(iglViewer &viewer, bool isVisible) ;

    /// Set Camera
    void SetCamera(iglViewer &viewer, float zoom, Vector3f eyePos);

    /// Utility
    void AppendDataToViewer(iglViewer &viewer, vector<iglViewerData> viewerDataList);
    void ClearViewer(iglViewer &viewer);
    void ClearMesh(iglViewer &viewer, int meshNum);
};


#endif //_LIBIGL_RENDER_H
