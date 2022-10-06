//
// Created by Linsanity on 18/4/22.
//

#include "Surface.h"
#include <OpenMesh/Core/IO/MeshIO.hh>

//**************************************************************************************//
//                                   Initialization
//**************************************************************************************//

Surface::Surface()
{

}

Surface::~Surface()
{
    ClearSurface();
}

void Surface::ClearSurface()
{

}




//**************************************************************************************//
//                              Read and Write Operation
//**************************************************************************************//

void Surface::LoadModel(char *fileName)
{
    OpenMesh::IO::read_mesh(inputSurfacePolyMesh, string(fileName));
    OpenMesh::IO::read_mesh(inputSurfaceTriMesh, string(fileName));
    inputSurfaceTriMesh.triangulate();

    PolyMesh2Matrix(inputSurfaceTriMesh, V, F);

    ComputeBBox();
}

void Surface::WriteOBJFile(char *fileName)
{
    /// TODO
}

void Surface::ComputeBBox()
{
    float minX, minY, minZ, maxX, maxY, maxZ;
    minX = maxX = V(0, 0);
    minY = maxY = V(0, 1);
    minZ = maxZ = V(0, 2);

    for (int i = 1; i < V.rows(); ++i)
    {
        if (maxX < V(i, 0))
            maxX = V(i, 0);
        if (minX > V(i, 0))
            minX = V(i, 0);

        if (maxY < V(i, 1))
            maxY = V(i, 1);
        if (minY > V(i, 1))
            minY = V(i, 1);

        if (maxZ < V(i, 2))
            maxZ = V(i, 2);
        if (minZ > V(i, 2))
            minZ = V(i, 2);
    }

    bbox.minPt = Vector3d(minX, minY, minZ);
    bbox.maxPt = Vector3d(maxX, maxY, maxZ);

    printf("BBox min:    %f %f %f\n", bbox.minPt[0], bbox.minPt[1], bbox.minPt[2]);
    printf("BBox max:    %f %f %f\n", bbox.maxPt[0], bbox.maxPt[1], bbox.maxPt[2]);
}




//**************************************************************************************//
//                              Operation
//**************************************************************************************//

void Surface::DelaunayTriangulation()
{
    MatrixXd currV;
    MatrixXi currF;
    PolyMesh2Matrix(inputSurfaceTriMesh, currV, currF);

    // Process V and F
    for (int i = 0; i < currV.rows(); ++i)
    {
        currV(i, 0) += 1;
        currV(i, 1) += 1;
        currV(i, 2) += 1;

        cout << currV(i, 0) << " " << currV(i, 1) << " " << currV(i, 2) << endl;
    }

    processedPolyMesh.clear();
    processedTriMesh.clear();

    vector<PolyMesh::VertexHandle> vhandles;

    for (int i = 0; i < currV.rows(); ++i)
    {
        vhandles.push_back(processedPolyMesh.add_vertex(PolyMesh::Point( currV(i, 0),  currV(i, 1),  currV(i, 2))));
    }

    processedPolyMesh.add_face(vhandles);

    processedTriMesh = processedPolyMesh;
    processedTriMesh.triangulate();

    for (int i = 0; i < currV.rows(); ++i)
    {
        cout << currV(i, 0) << " " << currV(i, 1) << " " << currV(i, 2) << endl;
    }
}



