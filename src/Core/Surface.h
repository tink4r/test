//
// Created by Linsanity on 18/4/22.
//

#ifndef TILEABLE_STRUCTURE_SURFACE_H
#define TILEABLE_STRUCTURE_SURFACE_H

#include <Eigen/Eigen>
#include <vector>
#include <Utility/HelpStruct.h>
#include <Utility/HelpTypedef.h>
#include <Utility/HelpFunc.h>
#include <Utility/dbg.h>

using namespace std;
using namespace Eigen;

class Surface {

public:
    /// Openmesh data
    PolyMesh inputSurfacePolyMesh;
    PolyMesh inputSurfaceTriMesh;

    /// Tri openmesh data
    PolyMesh processedPolyMesh;
    PolyMesh processedTriMesh;

    /// For interpolation
    MatrixXd V;
    MatrixXi F;
    MatrixXd V_uv;
    BoundingBox bbox;
    BoundingBox uvBBox;

public:
    /// Initialization
    Surface();
    ~Surface();
    void ClearSurface();

    /// Read and Write Operation
    void LoadModel(char * fileName);
    void WriteOBJFile(char fileName[]);
    void ComputeBBox();

    /// Operation
    void DelaunayTriangulation();
};


#endif //TILEABLE_STRUCTURE_SURFACE_H
