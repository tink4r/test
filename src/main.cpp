///////////////////////////////////////////////////////////////
//
// main.cpp
//
//   Volume Creator Program
//
// by Rulin Chen, Yingjie Chen and Peng Song
//
// 30/Aug/2021
//
//
///////////////////////////////////////////////////////////////


#include <igl/opengl/glfw/imgui/ImGuiMenu.h>
#include "Utility/HelpTypedef.h"
#include "Render/libigl_Render.h"
#include "Render/libigl_UI.h"
#include "Mesh/Mesh.h"
#include "Core/Surface.h"

///////////////////////////////////////////////////////////////
// Global Variables
///////////////////////////////////////////////////////////////

// the viewer
iglViewer viewer;

// a menu plugin
igl::opengl::glfw::imgui::ImGuiMenu menu;

int windowWidth;
int windowHeight;
static bool isFirstCall;

bool visibleAxes;
bool visibleGround;
bool visibleObjModel;
bool visibleProcessedModel;

bool is_restart;

libigl_Render myRender;

int frame;

// Input model name (.obj)
string inputFileName;

Surface mySurface;

///////////////////////////////////////////////////////////////
// Function Declarations
///////////////////////////////////////////////////////////////

void InitSetting();
void InitViewer();


///=========================================================================================///
///                                       Initialization
///=========================================================================================///

void InitSetting()
{
    windowWidth       =  1600;
    windowHeight      =  1000;

    isFirstCall       =  true;

    visibleAxes       =  true;
    visibleGround     =  true;
    visibleObjModel   =  true;
    visibleProcessedModel = false;

    is_restart = false;
    frame = 0;
}

void InitViewer()
{
    ///set animation
    viewer.core().animation_max_fps = 45.;
    viewer.core().is_animating = true;
    viewer.core().background_color = RowVector4f (1,1,1,0);
    viewer.core().set_rotation_type(igl::opengl::ViewerCore::ROTATION_TYPE_TRACKBALL); // For Trackball rotation setting
}




///=========================================================================================///
///                                       Interaction
///=========================================================================================///

bool key_down(iglViewer &Viewer, unsigned char key, int modifier)
{
    if (key == 'M')
    {
        /// TODO
    }

    else if (key == 'N')
    {
        /// TODO
    }

    else if (key == 'U')
    {
        /// TODO
    }

    else if (key == 'I')
    {
        /// TODO
    }

    return false;
}




///=========================================================================================///
///                                       Main Function
///=========================================================================================///

int main(int argc, char *argv[])
{
    setViewerUI(viewer);

    InitViewer();

    InitSetting();

    myRender.RenderScene(viewer);

    viewer.callback_key_down = &key_down;

    viewer.callback_pre_draw =
            [&](igl::opengl::glfw::Viewer &)
            {

                myRender.ShowGround( viewer, visibleGround );
                myRender.ShowAxes(viewer, visibleAxes );
                myRender.ShowObjModel(viewer, visibleObjModel);

                if(isFirstCall)
                {
                    myRender.SetCamera( viewer, 0.1, Vector3f (-10, 10, 10) );
                    isFirstCall = false;
                }

                return 0;
            };

    viewer.launch(true,false,"Tileable Structure", windowWidth, windowHeight);

    return 1;
}

