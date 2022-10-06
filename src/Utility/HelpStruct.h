///////////////////////////////////////////////////////////////
//
// HelpStruct.h
//
//   Common Structures
//
// by Peng SONG ( songpenghit@gmail.com )
//
// 02/Sep/2015
//
// Changed by CHENG 2020/11/04
//
///////////////////////////////////////////////////////////////

#ifndef HELPSTRUCT_H
#define HELPSTRUCT_H

#include <vector>
#include <Eigen/Eigen>
using namespace std;
using namespace Eigen;

#ifndef _MAX
#define _MAX(a,b) (((a) > (b)) ? (a) : (b))
#endif

#ifndef _MIN
#define _MIN(a,b) (((a) < (b)) ? (a) : (b))
#endif

////////////////////////////////////////////
/// Part Motion

struct Motion
{
    int type;                     // Motion type: R, T, 2T, 2R, T+R
    //pair<double, double>	range;    // Range (angle or position)
};



////////////////////////////////////////////
/// 3D Plane

struct Plane
{
    Vector3d point;
    Vector3d normal;
};




////////////////////////////////////////////
/// 3D Box

struct Box
{
    Vector3d minPt;
    Vector3d maxPt;

    Vector3d cenPt;
    Vector3d size;

    vector<Vector3d> corners;   // 8 corners


    Box();
    Box & operator=(const Box &box);
    void PrintBox();

    Vector3d GetCenter();
    Vector3d GetSize();
    void GetMinMaxPts();
    vector<Vector3d> GetCorners();
    vector<vector<int>> GetEdges();
    vector<vector<int>> GetQuadFaces();
    vector<Vector3i> GetTriFaces();

    void Transform(Vector3d transVec, Vector3d scale);
    double GetQuadArea();
};




////////////////////////////////////////////
/// 3D Triangle

struct Triangle
{
    int id;          // For mesh deformation

    Vector3d v[3];
    Vector3d normal;
    float area;          // Face area
    Vector3d center;

    void Init(Vector3d _v0, Vector3d _v1, Vector3d _v2);
    Triangle & operator=(const Triangle &tri);
    bool IsEqual(Triangle *tri);
    void PrintTriangle();

    void ComputeCenter();
    void ComputeArea();
    void ComputeNormal();
    void CorrectNormal(Vector3d tagtNormal);

    Vector3d GetBBoxMinPt()
    {
        Vector3d bboxMinPt;

        bboxMinPt(0) = _MIN(v[0](0), _MIN(v[1](0), v[2](0)));
        bboxMinPt(1) = _MIN(v[0](1), _MIN(v[1](1), v[2](1)));
        bboxMinPt(2) = _MIN(v[0](2), _MIN(v[1](2), v[2](2)));

        return bboxMinPt;
    };

    Vector3d GetBBoxMaxPt()
    {
        Vector3d bboxMaxPt;

        bboxMaxPt(0) = _MAX(v[0](0), _MIN(v[1](0), v[2](0)));
        bboxMaxPt(1) = _MAX(v[0](1), _MIN(v[1](1), v[2](1)));
        bboxMaxPt(2) = _MAX(v[0](2), _MIN(v[1](2), v[2](2)));

        return bboxMaxPt;
    };
};


// 3D Circle
struct Circle
{
    Vector3d center;
    Vector3d normal;
    float radius;
};

// 3D bounding box struct
typedef struct BoundingBox
{
    Vector3d minPt;
    Vector3d maxPt;
    Vector3d centerPt;

    BoundingBox() :
            minPt(0, 0, 0),
            maxPt(0, 0, 0),
            centerPt(0, 0, 0)
    {}
}BoundingBox;

struct TexGeoTrianglePair
{
    Triangle texTriangle;       // Mesh triangle in texture domain.
    Triangle geoTriangle;       // Mesh triangle in geometrical space.
};


#endif //HELPSTRUCT_H
