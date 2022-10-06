///////////////////////////////////////////////////////
//HelpFunc.cpp
//
// Additional Functions
//
// Created by Yingjie Cheng on 2020/11/05.
//
////////////////////////////////////////////////////////

#include "HelpFunc.h"
#include "HelpDefine.h"


// Color scheme table

Vector3d colorTable[16] = {
        Vector3d(0.9, 0.6, 0.4),   //  1: Orange
        Vector3d(0.6, 0.6, 0.9),   //  2: Light Blue
        Vector3d(0.4, 0.9, 0.4),   //  3: Green
        Vector3d(0.4, 0.4, 0.9),   //  4: Blue
        Vector3d(0.8, 0.8, 0.8),   //  5: Light Gray

        Vector3d(0.9, 0.5, 0.5),   //  6: Red
        Vector3d(0.9, 0.9, 0.5),   //  7: Yellow
        Vector3d(0.7, 0.3, 0.9),   //  8: Purple
        Vector3d(0.4, 0.9, 0.9),   //  9: Cyan
        Vector3d(0.9, 0.3, 0.6),   // 10: Pink
        Vector3d(0.6, 0.4, 0.3),   // 11: Brown
        Vector3d(0.9, 0.6, 0.5),   // 12: LightSalmon

        Vector3d(0.5, 0.2, 0.5),   // 13: Dark Purple
        Vector3d(0.4, 0.8, 0.7),   // 14: Dark Cyan
        Vector3d(0.3, 0.4, 0.7),   // 15: Dark Blue
        Vector3d(0.6, 0.6, 0.3),   // 16: Dark Yellow
};


///======================================================================================//
///                                 String Operations
///======================================================================================//

void GetFolderPath(string filePath, string &folderPath)
{
    // Subtract Puz file folder path
    size_t foundFolder = filePath.find_last_of('/'); // Note: this applies for Mac only
    folderPath = filePath.substr(0, foundFolder + 1);
}

void GetFolderPath(const char filePath[], char folderPath[])
{
    string sFilePath = string(filePath);

    // Subtract Puz file folder path
    size_t foundFolder = sFilePath.find_last_of('\\');
    string sFolderPath = sFilePath.substr(0, foundFolder + 1);
    sprintf(folderPath, "%s", sFolderPath.c_str());

}

string GetFileType(const char filePath[])
{
    string sFilePath = string(filePath);

    // Subtract file extension type
    size_t stringLen = sFilePath.size();
    size_t foundType = sFilePath.find_last_of('.');
    string sFileType = sFilePath.substr(foundType + 1, stringLen - (foundType + 1));

    return sFileType;
}

///======================================================================================//
///                                    Image
///======================================================================================//


Box ComputeBBox(vector<Vector3d> verList, bool isPrint)
{
    Box bbox;

    if ( !verList.empty() )
    {
        double minX = MAX_FLOAT, minY = MAX_FLOAT, minZ = MAX_FLOAT;
        double maxX = MIN_FLOAT, maxY = MIN_FLOAT, maxZ = MIN_FLOAT;

        for (auto & i : verList)
        {
            if (i(0) < minX )    minX = i(0);
            if (i(0) > maxX )    maxX = i(0);

            if (i(1) < minY )    minY = i(1);
            if (i(1) > maxY )    maxY = i(1);

            if (i.z() < minZ )    minZ = i.z();
            if (i.z() > maxZ )    maxZ = i.z();
        }

        bbox.minPt = Vector3d (minX, minY, minZ);
        bbox.maxPt = Vector3d (maxX, maxY, maxZ);

        bbox.GetCenter();
        bbox.GetSize();
    }

    if( isPrint )
    {
        printf("MinPt: [%6.3f %6.3f %6.3f] \n", bbox.minPt.x(), bbox.minPt.y(), bbox.minPt.z());
        printf("MaxPt: [%6.3f %6.3f %6.3f] \n", bbox.maxPt.x(), bbox.maxPt.y(), bbox.maxPt.z());
        printf("CenPt: [%6.3f %6.3f %6.3f] \n", bbox.cenPt.x(), bbox.cenPt.y(), bbox.cenPt.z());
    }

    return bbox;
}

/////////////////////////////////////////////////////////////////////
// Compute model volume following Dr Robert Nurnberg's method at:
// http://wwwf.imperial.ac.uk/~rn/centroid.pdf

double ComputeMeshVolume(vector<Triangle*> triList)
{
    double volume = 0;

    ///////////////////////////////////////////////
    // Case 1: input is a 3D triangle
    if ( triList.size() == 1 )
    {
        const double triThickness = 0.2;    // Note: this is a variable related to triangle size
        Triangle *tri = triList[0];

        tri->ComputeArea();
        volume = tri->area * triThickness;
    }

        ///////////////////////////////////////////////
        // Case 2: input is a 3D polyhedron
    else
    {
        // Accumulate volume value for each triangle
        for (auto tri : triList)
        {
            Vector3d ver0 = tri->v[0];
            Vector3d crossVec = -1.0f * (tri->v[2]-tri->v[0]).cross(tri->v[1]-tri->v[0]);
            double dotP = ver0.dot(crossVec);

            volume += dotP;
        }

        volume = volume / 6.0;
    }


    return volume;
}

double ComputeMeshVolume(vector<Triangle> triList)
{
    double volume = 0;

    ///////////////////////////////////////////////
    // Case 1: input is a 3D triangle
    if (triList.size() == 1)
    {
        const double triThickness = 0.2;    // Note: this is a variable related to triangle size
        Triangle tri = triList[0];

        tri.ComputeArea();
        volume = tri.area * triThickness;
    }

        ///////////////////////////////////////////////
        // Case 2: input is a 3D polyhedron
    else
    {
        // Accumulate volume value for each triangle
        for (const auto& tri : triList)
        {
            Vector3d ver0 = tri.v[0];
            Vector3d crossVec = -1.0 * (tri.v[2] - tri.v[0]).cross(tri.v[1] - tri.v[0]);
            double dotP = ver0.dot(crossVec);

            volume += dotP;
        }

        volume = volume / 6.0;
    }

    return volume;
}


/////////////////////////////////////////////////////////////////////
// Compute model centroid following Dr Robert Nurnberg's method at:
// http://wwwf.imperial.ac.uk/~rn/centroid.pdf

Vector3d ComputeMeshCentroid(vector<Triangle*> triList)
{
    Vector3d centroid = Vector3d(0,0,0);

    ///////////////////////////////////////////////
    // Case 1: input is a 3D triangle
    if ( triList.size() == 1 )
    {
        Triangle *tri = triList[0];

        tri->ComputeCenter();
        centroid = tri->center;
    }

        ///////////////////////////////////////////////
        // Case 2: input is a 3D polyhedron
    else
    {
        // Save the 3 major axes
        Vector3d axes[3];
        axes[0] = Vector3d( 1, 0, 0 );
        axes[1] = Vector3d( 0, 1, 0 );
        axes[2] = Vector3d( 0, 0, 1 );

        // Accumulate centroid value for each major axes
        for (int i=0; i<3; i++)
        {
            Vector3d axis = axes[i];

            for (auto tri : triList)
            {
                Vector3d crossVec = -1.0 * (tri->v[2]-tri->v[0]).cross(tri->v[1]-tri->v[0]);

                centroid[i] += ( 1/24.0f ) * ( crossVec.dot(axis) ) *
                               ( pow( (tri->v[0]+tri->v[1]).dot(axis), 2) +
                                 pow( (tri->v[1]+tri->v[2]).dot(axis), 2) +
                                 pow( (tri->v[2]+tri->v[0]).dot(axis), 2) );
            }
        }

        // Compute volume and centroid
        double volume = ComputeMeshVolume( triList );
        centroid = centroid / (2.0f*volume);
    }

    return centroid;
}


///======================================================================================//
///                                     Area
///======================================================================================//


double Area2DPolygon(vector<Vector3d> vertices)
{
    // a degenerate polygon
    int n = vertices.size();
    if (n < 3)
        return 0;

    //////////////////////////////////////////////
    // Get (n+1) 2D vertices for the polygon (v2D[n] = v2D[0] )

    vector<Vector3d> vertices2D;

    for (auto & vertex : vertices)
    {
        Vector3d tempV = Vector3d(vertex.x(), vertex.y(), 0.0);
        vertices2D.push_back(tempV);
    }
    Vector3d vn = Vector3d(vertices[0].x(), vertices[0].y(), 0.0);
    vertices2D.push_back(vn);

    //////////////////////////////////////////////
    // Compute area for the polygon

    double area = 0;
    int  i, j, k;   // indices

    for (i = 1, j = 2, k = 0; i < n; i++, j++, k++)
    {
        area += vertices2D[i].x() * (vertices2D[j].y() - vertices2D[k].y());
    }
    area += vertices2D[n].x() * (vertices2D[1].y() - vertices2D[n - 1].y());  // wrap-around term

    return area / 2.0;
}


///======================================================================================//
///                                    Distance
///======================================================================================//


double PointLineDistance(const Vector3d& tagtPt, const Vector3d& endPt1, const Vector3d& endPt2)
{
    Vector3d tagtvec = tagtPt - endPt1;
    Vector3d lineVec = (endPt2-endPt1) / (endPt2-endPt1).norm();

    Vector3d crossP = tagtvec.cross(lineVec);

    return crossP.norm();
}

double PointPlaneDistance(const Vector3d& tagtPt, const Vector3d& point, const Vector3d& normal)
{
    Vector3d tagtvec = tagtPt - point;

    double dotP = tagtvec.dot(normal);
    double dist = fabs( dotP );

    return dist;
}

double PointPlaneDistance(const Vector3d& point, const Vector3d& normal, const double& d)
{
    return fabs(normal.dot(point) + d);
}

double PointPolygonDistance(const Vector3d& p, vector<Vector3d> polyPoints)
{
    double minDist = MAX_FLOAT;

    for (int i = 0; i < polyPoints.size(); i++)
    {
        Vector3d edgePt0 = polyPoints[i];
        Vector3d edgePt1 = polyPoints[(i + 1) % polyPoints.size()];

        double dist = PointLineDistance(p, edgePt0, edgePt1);

        if ( dist < minDist )
        {
            minDist = dist;
        }
    }

    return minDist;
}



///======================================================================================//
///                                    Projection
///======================================================================================//


Vector3d ProjectPointToLine(const Vector3d& tagtPt, const Vector3d& linePt, Vector3d lineDir)
{
    lineDir = lineDir / (lineDir).norm();

    Vector3d tagtvec = tagtPt - linePt;
    double dist = tagtvec.dot(lineDir);

    Vector3d projPt = linePt + dist*lineDir;

    return projPt;
}

double ProjectPointToLine_Dist(const Vector3d& tagtPt, const Vector3d& linePt, Vector3d lineDir)
{
    lineDir = lineDir / (lineDir).norm();

    Vector3d tagtvec = tagtPt - linePt;
    double dist = tagtvec.dot(lineDir);

    return dist;
}

Vector3d ProjectPointToPlane(const Vector3d& tagtPt, const Plane& plane)
{
    Vector3d vecP = tagtPt - plane.point;
    double dotP = vecP.dot(plane.normal);
    Vector3d projPt = tagtPt - dotP * plane.normal;

    return projPt;
}

Triangle* ProjectTriangleToPlane(Triangle *tri, const Plane& plane)
{
    auto *projTri = new Triangle();

    for (int i=0; i<3; i++)
    {
        Vector3d projPt = ProjectPointToPlane(tri->v[i], plane);

        projTri->v[i] = projPt;
    }

    projTri->ComputeNormal();
    projTri->ComputeCenter();

    return projTri;
}




///======================================================================================//
///                                    Overlapping
///======================================================================================//

bool IsBoxBoxOverlap(Vector3d boxAMinPt, Vector3d boxAMaxPt, Vector3d boxBMinPt, Vector3d boxBMaxPt)
{
    if ( boxBMinPt(0) >= boxAMaxPt(0) || boxBMaxPt(0) <= boxAMinPt(0) ||
         boxBMinPt(1) >= boxAMaxPt(1) || boxBMaxPt(1) <= boxAMinPt(1) )
    {
        return false;
    }

    else
    {
        return true;
    }
}




///======================================================================================//
///                                    Intersection
///======================================================================================//


double LineHitTriangle(vec rayOrg, vec rayDir, const Triangle& triangle, vec &hitCoord, bool isPrint)
{
    double m,d1,d2,d3;
    vec temp;

    temp = triangle.v[0] - rayOrg;
    d1 = rayDir.dot(temp);
    temp = triangle.v[1] - rayOrg;
    d2 = rayDir.dot(temp);
    temp = triangle.v[2] - rayOrg;
    d3 = rayDir.dot(temp);
    if (d1 <= 0.0 && d2 <= 0.0 && d3 <= 0.0)
    {
        if ( isPrint )
            printf("case 0: \n");
        return -1.0;
    }

    vec vec0 = triangle.v[2] - triangle.v[0] ;
    vec vec1 = triangle.v[1] - triangle.v[0] ;
    vec hitNormal = vec0.cross(vec1);

    temp = triangle.v[0] - rayOrg;
    m = (hitNormal.dot(temp)) / (hitNormal.dot(rayDir));

    // check if hitNormal need to reverse in direction
    if ( (hitNormal.dot(rayDir)) >= 0)
    {
        hitNormal[0] = -hitNormal[0];
        hitNormal[1] = -hitNormal[1];
        hitNormal[2] = -hitNormal[2];
    }
    hitCoord[0] = rayOrg[0] + m * rayDir[0];
    hitCoord[1] = rayOrg[1] + m * rayDir[1];
    hitCoord[2] = rayOrg[2] + m * rayDir[2];

    if ( IsPointInsideTriangle(hitCoord, triangle, isPrint) )
    {
        if ( isPrint )
            printf("Case 2: hit triangle. \n");
        return m;
    }
    else
    {
        if ( isPrint )
            printf("Case 1: Out triangle \n");
        return -1.0;
    }
}

bool IsPointInsideTriangle(vec point, const Triangle& triangle, bool isPrint)
{
    // Consider the numerical error (double_ERROR value depends on triangle scale)
    //const double double_ERROR = 0.0000001;
    //const double double_ERROR = 0.000001;
    const double double_ERROR = 0.000002; // For Ring with VoxelSize = 0.15

    vec vec0 = triangle.v[2] - triangle.v[0] ;
    vec vec1 = triangle.v[1] - triangle.v[0] ;
    vec vec2 =      point  - triangle.v[0] ;

    // Note: DotResult should include the length of vec2 (when point is very close to triangle.v[0]).
    vec normal = vec0.cross(vec1);
    normal.normalize();
    double dotResult = normal.dot(vec2);

    if ( fabs(dotResult) > FLOAT_ERROR_SMALL )
    {
        if( isPrint )
        {
            printf("Warning: The point is not on the triangle's plane. \n");
            printf("error:  %.8f \n\n", fabs(dotResult));
        }
        return false;
    }

    double dot00 = vec0.dot(vec0) ;
    double dot01 = vec0.dot(vec1) ;
    double dot02 = vec0.dot(vec2) ;
    double dot11 = vec1.dot(vec1) ;
    double dot12 = vec1.dot(vec2) ;

    double inverDeno = 1 / (dot00 * dot11 - dot01 * dot01) ;

    double u = (dot11 * dot02 - dot01 * dot12) * inverDeno ;
    //if (u < 0 || u > 1) // if u out of range, return directly
    if ( u < 0-double_ERROR || u > 1+double_ERROR  )
    {
        if( isPrint )
            printf("Warning: u=%.12f is out of range \n", u);
        return false ;
    }

    double v = (dot00 * dot12 - dot01 * dot02) * inverDeno ;
    //if (v < 0 || v > 1) // if v out of range, return directly
    if ( v < 0-double_ERROR || v > 1+double_ERROR  )
    {
        if( isPrint )
            printf("Warning: v=%.12f is out of range \n", v);
        return false ;
    }

    if( isPrint )
        printf( "u+v = %.12f \n", u+v);

    return u + v <= 1+double_ERROR ;
}

bool IsPointOnLine(const Vector3d& tagtPt, const Vector3d& linePt1, const Vector3d& linePt2)
{
    Vector3d lineDir = (linePt2 - linePt1).normalized();
    Vector3d tagtDir = (tagtPt - linePt1);

    double lineLen = (linePt2 - linePt1).norm();

    double angle = AngleBetweenVectors(lineDir, tagtDir);
    double dotP = lineDir.dot(tagtDir);

    if (fabs(angle) < FLOAT_ERROR_SMALL && dotP < lineLen + FLOAT_ERROR_SMALL)
        return true;
    else
        return false;
}

double AngleBetweenVectors(Vector3d vec1, Vector3d vec2)
{
    vec1.normalize();
    vec2.normalize();

    double dotp = vec1.dot(vec2);
    double angle = acos(dotp) * 180.0 / M_PI;

    return angle;
}




///======================================================================================//
///                           Line Triangle Intersection
///======================================================================================//

bool IsPointInsideTriangle(Vector3d point, Triangle triangle)
{
    const float FLOAT_LARGE_ERROR = 0.00001;

    Vector3d vec0 = triangle.v[2] - triangle.v[0] ;
    Vector3d vec1 = triangle.v[1] - triangle.v[0] ;
    Vector3d vec2 =      point  - triangle.v[0] ;

    // Note: DotResult should include the length of vec2 (when point is very close to triangle.v0).
    Vector3d normal = vec0.cross(vec1);
    normal = normal / normal.norm();
    float dotResult = normal.dot(vec2);

    if ( fabs(dotResult) > FLOAT_LARGE_ERROR )
    {
        //printf("Warning: The point is not on the triangle's plane. \n");
        //printf("error:  %.8f \n\n", fabs(dotResult));
        return false;
    }

    float dot00 = vec0.dot(vec0) ;
    float dot01 = vec0.dot(vec1) ;
    float dot02 = vec0.dot(vec2) ;
    float dot11 = vec1.dot(vec1) ;
    float dot12 = vec1.dot(vec2) ;

    float inverDeno = 1 / (dot00 * dot11 - dot01 * dot01) ;

    float u = (dot11 * dot02 - dot01 * dot12) * inverDeno ;
    if (u < 0 || u > 1) // if u out of range, return directly
    {
        //printf("Warning: u is out of range \n");
        return false ;
    }

    float v = (dot00 * dot12 - dot01 * dot02) * inverDeno ;
    if (v < 0 || v > 1) // if v out of range, return directly
    {
        //printf("Warning: v is out of range \n");
        return false ;
    }

    return u + v <= 1 ;
    return true;
}

float GetTriangleArea(Vector3d triPt0, Vector3d triPt1, Vector3d triPt2)
{
    Vector3d triEdge1 = triPt1 - triPt0;
    Vector3d triEdge2 = triPt2 - triPt0;

    Vector3d crossVec = triEdge1.cross(triEdge2);

    return crossVec.norm();
}


///======================================================================================//
///                                  Sorting and Search
///=====================================================================================//

#define IS_LESS(v1, v2)   (v1 < v2)
#define IS_LARGE(v1, v2)  (v1 > v2)
#define SWAP(r,s)  do{HEAP_SORT_Type t=r; r=s; s=t; } while(0)

void siftDown(vector<HEAP_SORT_Type> &Array, vector<int> &Indices, int start, int end, bool isAscend);

vector<int> HeapSort(vector<HEAP_SORT_Type> &Array, bool isAscend)
{
    int count = Array.size();
    int start, end;

    // Initialize the index array
    vector<int> Indices;
    Indices.reserve(count+1);
    for (int i=0; i<count; i++)
        Indices.push_back(i);

    /* heapify */
    for (start = (count-2)/2; start >=0; start--)
    {
        siftDown(Array, Indices, start, count, isAscend);
    }

    for (end=count-1; end > 0; end--)
    {
        SWAP(Array[end],   Array[0]);
        SWAP(Indices[end], Indices[0]);

        siftDown(Array, Indices, 0, end, isAscend);
    }

    return Indices;
}

void siftDown(vector<HEAP_SORT_Type> &Array, vector<int> &Indices, int start, int end, bool isAscend)
{
    int root = start;

    while ( root*2+1 < end )
    {
        int child = 2*root + 1;

        if ( child == Array.size()-1 )
            return;

        if ((isAscend && IS_LESS(Array[child], Array[child + 1])) ||
            (!isAscend && IS_LARGE(Array[child], Array[child + 1])) )
        {
            if ( child + 1 < end )
            {
                child += 1;
            }
        }

        if ((isAscend && IS_LESS(Array[root], Array[child])) ||
            (!isAscend && IS_LARGE(Array[root], Array[child])) )
        {
            SWAP(Array[child],   Array[root] );
            SWAP(Indices[child], Indices[root]);

            root = child;
        }
        else
            return;
    }
}


vector<int> BubbleSort(vector<double> &Array, bool isAscend)
{
    vector<int> Indices;
    Indices.reserve(Array.size());
    for (int i=0; i<Array.size(); i++)
        Indices.push_back(i);

    int i, j, flag = 1; // Set flag to 1 to start first pass
    double tempValue;    // Holding variable
    int tempIndex;      // Holding variable index
    int num = Array.size();
    for(i = 1; (i <= num) && flag; i++)
    {
        flag = 0;
        for (j=0; j < (num -1); j++)
        {
            if  ( ( isAscend && Array[j+1] < Array[j]) ||
                  (!isAscend && Array[j+1] > Array[j]) )
            {
                // Swap the values in the array
                tempValue = Array[j];
                Array[j] = Array[j+1];
                Array[j+1] = tempValue;

                // Swap the index of these two values
                tempIndex = Indices[j];
                Indices[j] = Indices[j+1];
                Indices[j+1] = tempIndex;

                flag = 1;
            }
        }
    }

    return Indices;
}

vector<int> BubbleSort(vector<int> &Array, bool isAscend)
{
    vector<int> Indices;
    for (int i=0; i<Array.size(); i++)
        Indices.push_back(i);

    int i, j, flag = 1; // Set flag to 1 to start first pass
    double tempValue;    // Holding variable
    int tempIndex;      // Holding variable index
    int num = Array.size();
    for(i = 1; (i <= num) && flag; i++)
    {
        flag = 0;
        for (j=0; j < (num -1); j++)
        {
            if  ( ( isAscend && Array[j+1] < Array[j]) ||
                  (!isAscend && Array[j+1] > Array[j]) )
            {
                // Swap the values in the array
                tempValue = Array[j];
                Array[j] = Array[j+1];
                Array[j+1] = tempValue;

                // Swap the index of these two values
                tempIndex = Indices[j];
                Indices[j] = Indices[j+1];
                Indices[j+1] = tempIndex;

                flag = 1;
            }
        }
    }

    return Indices;
}


// Note: element could be modelID, jointID, cycleID ect.
int GetElementIndexInList(vector<int> elementList, int targtElement)
{
    for (int i=0; i<elementList.size(); i++)
    {
        if ( elementList[i] == targtElement )
            return i;
    }

    return ELEMENT_OUT_LIST;
}


///======================================================================================//
///                              Matrix and Array Related
///======================================================================================//


///return vec4 from vec3 for computing AX+T
Vector4d liftVec(Vector3d vec3)
{
    Vector4d ColVec4;
    ColVec4(0) = vec3(0);
    ColVec4(1) = vec3(1);
    ColVec4(2) = vec3(2);
    ColVec4(3) = 1;
    return ColVec4;
}

Vector4d liftVec(RowVector3d vec3)
{
    Vector4d ColVec4;
    ColVec4(0) = vec3(0);
    ColVec4(1) = vec3(1);
    ColVec4(2) = vec3(2);
    ColVec4(3) = 1;
    return ColVec4;
}

///Affine matrix with Rotation and Translation matrix
Matrix3d GetRotationFromAffine(Matrix4d AffineM)
{
    Matrix3d RotM;
    for(int i=0;i<3;i++)
    {
        for(int j=0;j<3;j++)
            RotM(i,j) = AffineM(i,j);
    }
    return RotM;
}

Matrix4d GetAffine(Matrix3d RotM)
{
    Matrix4d AffineM;
    for(int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            AffineM(i, j) = RotM(i, j);
        }

        AffineM(i,3) = 0.0f;
    }

    AffineM(3,0) = 0.0f;
    AffineM(3,1) = 0.0f;
    AffineM(3,2) = 0.0f;
    AffineM(3,3) = 1.0f;

    return AffineM;
}

Matrix4d GetAffine(Matrix3d RotM, Vector3d TransVec)
{
    Matrix4d AffineM;
    for(int i=0;i<3;i++)
    {
        for (int j = 0; j < 3; j++)
        {
            AffineM(i, j) = RotM(i, j);
        }
        AffineM(i,3) = TransVec(i);
    }
    AffineM(3,3) = 1.0f;
    return AffineM;
}

// Note: Input matrix is Transform of OpenGL style matrix (Row major)
void MultiplyPoint(vec inPt, const Matrix4d& inMat, vec &outPt)
{
    Vector4d inPt4, outPt4;

    inPt4 = liftVec(inPt);
    outPt4 = inMat * inPt4;

    for(int i=0; i < 3; i++)
        outPt(i) = outPt4(i);
}

// Note: Input matrix is Transform of OpenGL style matrix (Row major)
void MultiplyVector(vec inVec, Matrix4d inMat, vec &outVec)
{
    outVec = GetRotationFromAffine(inMat) * inVec;
}

// Note: Input matrix is Transform of OpenGL style matrix (Row major)
void MultiplyNormal(vec inNor, const Matrix4d& inMat, vec &outNor)
{
    Matrix3d RotM;
    RotM = GetRotationFromAffine(inMat);
    if(RotM.determinant() == 0)
        printf("Inverse Matrix Error \n");
    outNor = RotM.inverse().transpose()*inNor;
    outNor.normalize();
}

/// rotation axis Z->Y->X , for fixed axis (world coordinate system)
Matrix4d GetRotationMatrix(Vector3d eulerAngles)
{
    Matrix3d RotM;
    RotM = AngleAxisd(eulerAngles[0], Vector3d::UnitX()) *
           AngleAxisd(eulerAngles[1], Vector3d::UnitY()) *
           AngleAxisd(eulerAngles[2], Vector3d::UnitZ());
    Matrix4d AffineM = GetAffine(RotM);
    return AffineM;
}

/// R = cos(x)*I + (1-cos(x))* (r * r^T) + sinx * ((0,-rz,ry);(rz,0,-rx);(-ry,rx,0))
/// Rodrigues
Matrix4d GetRotationMatrix(double rotAngle, Vector3d rotAxis)
{
    Matrix3d RotM;
    Matrix3d tempM;

    rotAxis.normalize();
    tempM << 0, -rotAxis.z(), rotAxis.y(),
            rotAxis.z(), 0, -rotAxis.x(),
            -rotAxis.y(), rotAxis.x(), 0;
    RotM = cos(rotAngle)*Matrix3d::Identity() + (1-cos(rotAngle))*(rotAxis*(rotAxis.transpose())) + sin(rotAngle)*tempM;

    Matrix4d AffineM;
    AffineM = GetAffine(RotM);
    return AffineM;
}

Matrix2d GetRotationMatrix(double rotAngle)
{
    Matrix2d RotM;

    RotM << cos(rotAngle), -sin(rotAngle),
            sin(rotAngle), cos(rotAngle);

    return RotM;
}

Matrix4d GetTranslateMatrix(Vector3d transVec)
{
    Matrix4d TransAffineM;
    TransAffineM.setIdentity();
    TransAffineM(0,3) = transVec(0);
    TransAffineM(1,3) = transVec(1);
    TransAffineM(2,3) = transVec(2);
    return TransAffineM;
}

Matrix4d GetRotationMatrix(double rotAngle, Vector3d rotAxis, const Vector3d& rotCenter)
{
    return GetTranslateMatrix(rotCenter)*GetRotationMatrix(rotAngle,rotAxis)*GetTranslateMatrix(-rotCenter);
}

Matrix4d GetTransformMatrix(Vector3d eulerAngles, Vector3d position)
{
    Matrix4d transRotM;
    transRotM = GetRotationMatrix(eulerAngles);
    transRotM(0,3) = position(0);
    transRotM(1,3) = position(1);
    transRotM(2,3) = position(2);
    return transRotM;
}

Matrix4d GetScaleMatrix(Vector3d scaleVec)
{
    Matrix4d scaleMat;

    scaleMat.setIdentity();
    scaleMat(0, 0) = scaleVec(0);
    scaleMat(1, 1) = scaleVec(1);
    scaleMat(2, 2) = scaleVec(2);

    return scaleMat;
}



///==============================================================================//
///                              Utility solver
///==============================================================================//

double SolveEqua(double a, double b, double c)
{
    return (-b + sqrt(b*b - 4 * a*c)) / (2 * a);
}

double SolveEqua2(double a, double b, double c)
{
    return (-b - sqrt(b*b - 4 * a*c)) / (2 * a);
}

double SolvePointToCircleK1(double Pointx, double Pointy, double Cx, double Cy, double r)
{
    Cx -= Pointx;
    Cy -= Pointy;
    return SolveEqua(r*r - Cx*Cx, 2 * Cx*Cy, r*r - Cy*Cy);
}

double SolvePointToCircleK2(double Pointx, double Pointy, double Cx, double Cy, double r)
{
    Cx -= Pointx;
    Cy -= Pointy;
    return SolveEqua2(r*r - Cx*Cx, 2 * Cx*Cy, r*r - Cy*Cy);
}

void UpIntersectionOfCircles(double ans[2], double O1_x, double O1_y, double O1_R, double O2_x, double O2_y, double O2_R)
{
    double x1 = O1_x - O2_x;
    double y1 = O1_y - O2_y;
    double a = 4 * y1*y1 + 4 * x1*x1;
    double b = -4 * y1*(O2_R*O2_R - O1_R*O1_R + x1*x1 + y1*y1);
    double c = pow((O2_R*O2_R - O1_R*O1_R + x1*x1 + y1*y1), 2) - pow(2 * O2_R*x1, 2);
    //printf("%f   %f  %f\n", a, b, c);

    ans[1] = (-b + sqrt(b*b - 4 * a*c)) / (2.0 * a);
    ans[0] = (O2_R*O2_R - O1_R*O1_R + x1*x1 + y1*y1 - 2.0 * ans[1] * y1) / (2.0 * x1) + O2_x;
    ans[1] += +O2_y;
}

void DownIntersectionOfCircles(double ans[2], double O1_x, double O1_y, double O1_R, double O2_x, double O2_y, double O2_R)
{
    double x1 = O1_x - O2_x;
    double y1 = O1_y - O2_y;
    double a = 4 * y1*y1 + 4 * x1*x1;
    double b = -4 * y1*(O2_R*O2_R - O1_R*O1_R + x1*x1 + y1*y1);
    double c = pow((O2_R*O2_R - O1_R*O1_R + x1*x1 + y1*y1), 2) - pow(2 * O2_R*x1, 2);
    //printf("%f   %f  %f\n", a, b, c);

    ans[1] = (-b - sqrt(b*b - 4 * a*c)) / (2.0 * a);
    ans[0] = (O2_R*O2_R - O1_R*O1_R + x1*x1 + y1*y1 - 2.0 * ans[1] * y1) / (2.0 * x1) + O2_x;
    ans[1] += +O2_y;
}

bool isIntersectOfCircles(double O1_x, double O1_y, double O1_R, double O2_x, double O2_y, double O2_R)
{
    double x1 = O1_x - O2_x;
    double y1 = O1_y - O2_y;
    double a = 4 * y1*y1 + 4 * x1*x1;
    double b = -4 * y1*(O2_R*O2_R - O1_R*O1_R + x1*x1 + y1*y1);
    double c = pow((O2_R*O2_R - O1_R*O1_R + x1*x1 + y1*y1), 2) - pow(2 * O2_R*x1, 2);

    if (b*b - 4 * a*c < 0)    return false;
    else                      return true;
}

///==============================================================================//
///                             Line to Cylinder
///==============================================================================//

double DisPointToLine(const Vector3d& P0, const Vector3d& P1, Vector3d V1)
{
    V1.normalize();
    Vector3d L = P0 - P1;
    Vector3d Re = L.cross(V1);
    return Re.norm();
}

double DisLineToLine(const Vector3d& P1, Vector3d v1, const Vector3d& P2, Vector3d v2)
{
    v1.normalize();
    v2.normalize();

    Vector3d Cross = v1.cross(v2);
    double Re;

    //para
    if(Cross.norm()<0.00001)
    {
        Re = (P1-P2).cross(v1).norm();
    }
    //NO-planar
    else
    {
        Re = abs((P1 - P2).dot(Cross));
    }

    return Re;
}

bool LineToCylinder(const Vector3d& P, Vector3d VL, const Vector3d& Q, Vector3d VC, double r, double &t1, double &t2)
{
    double A,B,C;
    A = B = C = 0;
    VL.normalize();
    VC.normalize();

    double u = VC.x();
    double v = VC.y();
    double w = VC.z();

    double w2v2 = w*w + v*v;
    double w2u2 = w*w + u*u;
    double u2v2 = u*u + v*v;

    double Rx = VL.x();
    double Ry = VL.y();
    double Rz = VL.z();

    double Px = (P-Q).x();
    double Py = (P-Q).y();
    double Pz = (P-Q).z();


    A = Rx*Rx*w2v2 + Ry*Ry*w2u2 + Rz*Rz*u2v2 -2*w*v*Ry*Rz - 2*w*u*Rx*Rz - 2*u*v*Rx*Ry;
    B = 2*Rx*Px*w2v2 + 2*Ry*Py*w2u2 + 2*Rz*Pz*u2v2 -2*w*v*(Rz*Py+Ry*Pz) - 2*w*u*(Rx*Pz+Rz*Px) - 2*u*v*(Rx*Py+Ry*Px);
    C = Px*Px*w2v2 + Py*Py*w2u2 + Pz*Pz*u2v2 -2*w*v*Py*Pz - 2*w*u*Px*Pz - 2*u*v*Px*Py;

    C = C - r*r;

    double delta  = B*B - 4*A*C;
    if(delta<0)
        return false;
    else
    {
        t1 = SolveEqua2(A,B,C);
        t2 = SolveEqua(A,B,C);
        return true;
    }
}

///==============================================================================//
///                              polyline functions
///==============================================================================//


double ReturnInto2PI(double s)
{
    while(s>=2*M_PI)
        s = s - 2*M_PI;
    while(s<0)
        s = s + 2*M_PI;
    return s;
}

int FindNeighbor(double s, int NSize)
{
    int id = -1;
    for(int i=0;i<NSize;i++)
    {
        if((i+1)*2.0*M_PI/NSize>s && i*2.0*M_PI/NSize<=s)
        {
            id = i;
            break;
        }
    }

    if(id == -1) printf("curve paras are wrong!\n");

    return id;
}

int FindNeighbor(double s, vector<double> paras)
{
    int id = -1;
    int NSize = paras.size();
    for(int i=0;i<NSize-1;i++)
    {
        if(paras[i+1]>s && paras[i]<=s)
        {
            id = i;
            break;
        }
    }
    if(s>paras[NSize-1] && s<=2*M_PI)
        id = NSize - 1;

    if(id == -1) printf("curve paras are wrong!\n");

    return id;
}

void GetId(double s, int &id, int &id2, double &wL, double &wR, int NSize)
{
    s = ReturnInto2PI(s);
    id = FindNeighbor(s, NSize);
    double pre = id*2.0*M_PI/NSize;
    double next;

    if(id<NSize-1)
    {
        next = (id+1)*2.0*M_PI/NSize;
        id2 = id+1;
    }
    else if(id == NSize - 1)
    {
        next = 2*M_PI;
        id2 = 0;
    }

    wL = (next - s)/(next - pre);
    wR = (s - pre)/(next - pre);
}

Vector3d GetPolyLine(double s, const vector<Vector3d> &pitchCurve)
{
    Vector3d Position;

    int id,id2;
    double weightLeft,weightRight;

    GetId(s,id,id2,weightLeft,weightRight,pitchCurve.size());

    Position = weightLeft*pitchCurve[id] + weightRight*pitchCurve[id2];
    return Position;
}

void PolyMesh2Matrix(PolyMesh polyMesh, MatrixXd & V, MatrixXi & F)
{
    polyMesh.triangulate();

    V.resize(polyMesh.n_vertices(), 3);

    int i = 0;
    for (PolyMesh::VertexIter v_it=polyMesh.vertices_begin(); v_it!=polyMesh.vertices_end(); ++v_it)
    {
        V(i, 0) = polyMesh.point(v_it)[0];
        V(i, 1) = polyMesh.point(v_it)[1];
        V(i, 2) = polyMesh.point(v_it)[2];
        ++i;
    }

    F.resize(polyMesh.n_faces(), 3);

    i = 0;
    for (PolyMesh::FaceIter f_it=polyMesh.faces_begin(); f_it!=polyMesh.faces_end(); ++f_it)
    {
        PolyMesh::FaceVertexIter fv_it;

        int j = 0;
        for (fv_it=polyMesh.fv_iter( *f_it ); fv_it.is_valid(); ++fv_it)
        {
            F(i, j) = fv_it->idx();
            ++j;
        }
        ++i;
    }

}

void PolyMesh2Edge(PolyMesh polyMesh, MatrixXd & p1_mat, MatrixXd & p2_mat)
{
    p1_mat.resize(polyMesh.n_edges(), 3);
    p2_mat.resize(polyMesh.n_edges(), 3);

    int i = 0;
    for (PolyMesh::EdgeIter e_it=polyMesh.edges_begin(); e_it!=polyMesh.edges_end(); ++e_it)
    {
        const PolyMesh::Point to   = polyMesh.point(polyMesh.to_vertex_handle(polyMesh.halfedge_handle(e_it,0)));
        const PolyMesh::Point from = polyMesh.point(polyMesh.from_vertex_handle(polyMesh.halfedge_handle(e_it,0)));

        p1_mat(i, 0) = to[0];
        p1_mat(i, 1) = to[1];
        p1_mat(i, 2) = to[2];

        p2_mat(i, 0) = from[0];
        p2_mat(i, 1) = from[1];
        p2_mat(i, 2) = from[2];

        ++i;
    }
}

void PolyMesh2Planarity(PolyMesh polyMesh, VectorXd & planarityList)
{
    planarityList.resize(polyMesh.n_faces());

    OpenMesh::FPropHandleT< double > currPlanarity;
    polyMesh.get_property_handle(currPlanarity, "facePlanarity");

    int i = 0;
    for (PolyMesh::FaceIter f_it=polyMesh.faces_begin(); f_it!=polyMesh.faces_end(); ++f_it)
    {
//        cout << polyMesh.property( currPlanarity , *f_it ) << endl;
        planarityList(i) = polyMesh.property( currPlanarity , *f_it );
        ++i;
    }
}

void PolyMesh2ShapeOpMatrix(PolyMesh polyMesh, Matrix3Xd & verMat, vector< vector<int> > & faceVerList)
{
    /// Delete the duplicate vertices
    vector<Vector3d> verList;

    int i = 0;
    for (PolyMesh::VertexIter v_it=polyMesh.vertices_begin(); v_it!=polyMesh.vertices_end(); ++v_it)
    {
        Vector3d currVer;
        currVer[0] = polyMesh.point(v_it)[0];
        currVer[1] = polyMesh.point(v_it)[1];
        currVer[2] = polyMesh.point(v_it)[2];
        ++i;

        if (std::find(verList.begin(), verList.end(), currVer) == verList.end())
        {
            verList.push_back(currVer);
        }
    }

    verMat.resize(3, verList.size());

    for (int j = 0; j < verList.size(); ++j)
    {
        verMat(0, j) = verList[j][0];
        verMat(1, j) = verList[j][1];
        verMat(2, j) = verList[j][2];
    }

    /// Find the index for each vertex of a face
    for (PolyMesh::FaceIter f_it=polyMesh.faces_begin(); f_it!=polyMesh.faces_end(); ++f_it)
    {
        PolyMesh::FaceVertexIter fv_it;

        vector<int> currFaceVerList;

        for (fv_it=polyMesh.fv_iter( *f_it ); fv_it.is_valid(); ++fv_it)
        {
            Vector3d currVer;
            currVer[0] = polyMesh.point(fv_it)[0];
            currVer[1] = polyMesh.point(fv_it)[1];
            currVer[2] = polyMesh.point(fv_it)[2];

            int currVerIndex = std::find(verList.begin(), verList.end(), currVer) - verList.begin();

            currFaceVerList.push_back(currVerIndex);
        }

        faceVerList.push_back(currFaceVerList);
    }
}

void ShapeOpMatrix2PolyMesh(PolyMesh & polyMesh, Matrix3Xd verMat, vector< vector<int> > faceVerList)
{
    for (int i = 0; i < faceVerList.size(); ++i)
    {
        std::vector<PolyMesh::VertexHandle>  face_vhandles;

        for (int j = 0; j < faceVerList[i].size(); ++j)
        {
            face_vhandles.push_back(polyMesh.add_vertex(PolyMesh::Point(verMat(0, faceVerList[i][j]),verMat(1, faceVerList[i][j]),verMat(2, faceVerList[i][j]))));
        }

        polyMesh.add_face(face_vhandles);
    }
}

void PlanarityPropertyTransfer(PolyMesh * polyMesh, PolyMesh * triMesh)
{
    // Check if polymesh has facePlanarity property
//    if (OpenMesh::hasProperty<OpenMesh::FaceHandle, double>(polyMesh, "facePlanarity")) {
//        // Property exists. Do something with it.
//        auto valley = OpenMesh::FProp<bool>(mesh, "facePlanarity");
//    }
//    else {
//        // Property does not exist. Do something else.
//    }

    // Add planarity to each face
    OpenMesh::FPropHandleT< double > triPlanarity;
    triMesh->add_property( triPlanarity ,"facePlanarity");

    for (PolyMesh::FaceIter f_it=triMesh->faces_begin(); f_it!=triMesh->faces_end(); ++f_it)
    {
        PolyMesh::FaceVertexIter fv_it;

        vector< Vector3d > currFaceVerList;

        for (fv_it=triMesh->fv_iter( *f_it ); fv_it.is_valid(); ++fv_it)
        {
            Vector3d currVer;
            currVer[0] = triMesh->point(fv_it)[0];
            currVer[1] = triMesh->point(fv_it)[1];
            currVer[2] = triMesh->point(fv_it)[2];

            currFaceVerList.push_back(currVer);
        }

//        cout << "Test--------------" << endl;

        OpenMesh::FPropHandleT< double > polyPlanarity;
        polyMesh->get_property_handle(polyPlanarity, "facePlanarity");

        for (PolyMesh::FaceIter f_it_poly=polyMesh->faces_begin(); f_it_poly!=polyMesh->faces_end(); ++f_it_poly)
        {
            PolyMesh::FaceVertexIter fv_it_poly;

            vector< Vector3d > currFaceVerList_poly;

            for (fv_it_poly=polyMesh->fv_iter( *f_it_poly ); fv_it_poly.is_valid(); ++fv_it_poly)
            {
                Vector3d currVer;
                currVer[0] = triMesh->point(fv_it_poly)[0];
                currVer[1] = triMesh->point(fv_it_poly)[1];
                currVer[2] = triMesh->point(fv_it_poly)[2];

                currFaceVerList_poly.push_back(currVer);
            }

            if (find(currFaceVerList_poly.begin(), currFaceVerList_poly.end(), currFaceVerList[0]) != currFaceVerList_poly.end()
            and find(currFaceVerList_poly.begin(), currFaceVerList_poly.end(), currFaceVerList[1]) != currFaceVerList_poly.end()
            and find(currFaceVerList_poly.begin(), currFaceVerList_poly.end(), currFaceVerList[2]) != currFaceVerList_poly.end() )
            {
                triMesh->property(triPlanarity, *f_it) = polyMesh->property(polyPlanarity, *f_it_poly);
//                cout << "Done." << endl;
//                cout << "currPlanarity: " << polyMesh->property(polyPlanarity, *f_it_poly)<< endl;
            }
        }
    }
}

void FindFittedPlane_LSM(MatrixXd points, Vector3d & normal, double & d)
{
    // 1、计算质心
    Eigen::RowVector3d centroid = points.colwise().mean();

    // 2、去质心
    Eigen::MatrixXd demean = points;
    demean.rowwise() -= centroid;

    // 3、SVD分解求解协方差矩阵的特征值特征向量
    Eigen::JacobiSVD<Eigen::MatrixXd> svd(demean, Eigen::ComputeThinU | Eigen::ComputeThinV);
    Eigen::Matrix3d V = svd.matrixV();

    // 5、平面的法向量a,b,c
    Eigen::RowVector3d rowNormal;
    rowNormal << V(0,2), V(1,2), V(2,2);
    normal(0) = rowNormal(0); normal(1) = rowNormal(1); normal(2) = rowNormal(2);

    // 6、原点到平面的距离d
    d = -rowNormal * centroid.transpose();
}

void ComputePolygonDissimilarity(vector<Vector3d> & verList_1, vector<Vector3d> & verList_2, double & dissimilarity)
{
    // Compute the angle list for the first polygon
    vector<double> angleList_1;
    for (int i = 0; i < verList_1.size(); ++i)
    {
        if (i == 0)
        {
            Vector3d edge_1 = verList_1[i + 1] - verList_1[i];
            Vector3d edge_2 = verList_1[verList_1.size() - 1] - verList_1[i];
            angleList_1.push_back(GetAngelOfTwoVector(edge_1, edge_2));
        }
        if (i == verList_1.size() - 1)
        {
            Vector3d edge_1 = verList_1[0] - verList_1[i];
            Vector3d edge_2 = verList_1[i - 1] - verList_1[i];
            angleList_1.push_back(GetAngelOfTwoVector(edge_1, edge_2));
        }
        else
        {
            Vector3d edge_1 = verList_1[i + 1] - verList_1[i];
            Vector3d edge_2 = verList_1[i - 1] - verList_1[i];
            angleList_1.push_back(GetAngelOfTwoVector(edge_1, edge_2));
        }
    }

    // Compute the angle list for the second polygon
    vector<double> angleList_2;
    for (int i = 0; i < verList_2.size(); ++i)
    {
        if (i == 0)
        {
            Vector3d edge_1 = verList_2[i + 1] - verList_2[i];
            Vector3d edge_2 = verList_2[verList_2.size() - 1] - verList_2[i];
            angleList_2.push_back(GetAngelOfTwoVector(edge_1, edge_2));
        }
        if (i == verList_1.size() - 1)
        {
            Vector3d edge_1 = verList_2[0] - verList_2[i];
            Vector3d edge_2 = verList_2[i - 1] - verList_2[i];
            angleList_2.push_back(GetAngelOfTwoVector(edge_1, edge_2));
        }
        else
        {
            Vector3d edge_1 = verList_2[i + 1] - verList_2[i];
            Vector3d edge_2 = verList_2[i - 1] - verList_2[i];
            angleList_2.push_back(GetAngelOfTwoVector(edge_1, edge_2));
        }
    }

    // Compute the edge list for the first and second polygon
    vector<double> edgeList_1;
    vector<double> edgeList_2;
    for (int i = 0; i < verList_1.size(); ++i)
    {
        Vector3d edge_1;
        Vector3d edge_2;

        if (i < verList_1.size() - 1)
        {
            edge_1 = verList_1[i + 1] - verList_1[i];
            edge_2 = verList_2[i + 1] - verList_2[i];
        }
        else
        {
            edge_1 = verList_1[0] - verList_1[i];
            edge_2 = verList_2[0] - verList_2[i];
        }

        edgeList_1.push_back(edge_1.norm());
        edgeList_2.push_back(edge_2.norm());
    }

    // Scaling
//    double aveLength_1 = 0;
//    double aveLength_2 = 0;
//    for (int i = 0; i < edgeList_1.size(); ++i)
//    {
//        aveLength_1 += edgeList_1[i];
//        aveLength_2 += edgeList_2[i];
//    }
//    aveLength_1 = aveLength_1 / edgeList_1.size();
//    aveLength_2 = aveLength_2 / edgeList_2.size();
//
//    double scaleFactor_1 = 1.0 / aveLength_1;
//    double scaleFactor_2 = 1.0 / aveLength_2;
//
//    for (int i = 0; i < edgeList_1.size(); ++i)
//    {
//        edgeList_1[i] *= scaleFactor_1;
//        edgeList_2[i] *= scaleFactor_2;
//    }

    // Start computing the dissimilarity

    // before fliping
    vector<double> dissimilarityList;
    for (int i = 0; i < edgeList_1.size(); ++i)
    {
        double currDis = 0;
        for (int j = 0; j < edgeList_1.size(); ++j)
        {
            currDis += pow((edgeList_1[j] - edgeList_2[j]), 2);
            currDis += pow(angleList_1[j] - angleList_2[j], 2);
        }
        dissimilarityList.push_back(currDis);

        // Rotation
        edgeList_1.push_back(edgeList_1[0]);
        edgeList_1.erase(edgeList_1.begin());

        angleList_1.push_back(angleList_1[0]);
        angleList_1.erase(angleList_1.begin());
    }

    // after fliping
    for (int i = 0; i < edgeList_1.size(); ++i)
    {
        double currDis = 0;
        int k = edgeList_1.size();
        for (int j = 0; j < edgeList_1.size(); ++j)
        {
            currDis += pow((edgeList_1[k - j + 1] - edgeList_2[k - j + 1]), 2);
            currDis += pow(angleList_1[j] - angleList_2[j], 2);
        }
        dissimilarityList.push_back(currDis);

        // Rotation
        edgeList_1.push_back(edgeList_1[0]);
        edgeList_1.erase(edgeList_1.begin());

        angleList_1.push_back(angleList_1[0]);
        angleList_1.erase(angleList_1.begin());
    }

    dissimilarity = *min_element(dissimilarityList.begin(), dissimilarityList.end());

}

double GetAngelOfTwoVector(const Vector3d & v1, const Vector3d & v2)
{
    double dot = v1.dot(v2);

    double l1 = v1.norm();
    double l2 = v2.norm();

    double theta = acos(dot/(sqrt(l1 + l2)));

    if (theta > M_PI)
        theta -= 2 * M_PI;
    if (theta < -M_PI)
        theta += 2 * M_PI;

    theta = theta * 180 / M_PI;

    return theta;
}