///////////////////////////////////////////////////////////////
//
// libigl_UI.h
//
//   User interface with libigl
//
// by Rulin Chen
//
// 19/Apr/2022
//
//
///////////////////////////////////////////////////////////////

#include "libigl_UI.h"

#include <igl/opengl/glfw/imgui/ImGuiMenu.h>
#include <igl/opengl/glfw/imgui/ImGuiHelpers.h>
#include "Utility/HelpTypedef.h"
#include "Render/libigl_Render.h"

#include "Core/Surface.h"

using std::vector;
using std::cout;
using std::endl;


///////////////////////////////////////////////////////////////
// Extern Variables
///////////////////////////////////////////////////////////////

extern iglViewer viewer;
extern igl::opengl::glfw::imgui::ImGuiMenu menu;

extern bool visibleAxes;
extern bool visibleGround;
extern bool visibleObjModel;
extern bool visibleProcessedModel;

extern bool is_restart;

extern libigl_Render myRender;

// to show tips hovering on the UI items
static void HelpMarker(const char* desc);

// Input model name (.obj)
extern string inputFileName;
extern Surface mySurface;

float parameter_1 = 0.0;
float parameter_2 = 0.0;


///=========================================================================================///
///                                      Helper Functions
///=========================================================================================///

void StatusBar()
{

    string fileName = inputFileName;

    for (int i = fileName.size() - 1; i > 0; --i)
    {
        if (fileName[i] == '/')
        {
            fileName.erase(fileName.begin(), fileName.begin() + i + 1);
            break;
        }
    }

    ImGui::Text("   File Name: %s", fileName.c_str());
}

static void HelpMarker(const char* desc)
{
    if (ImGui::IsItemHovered())
    {
        ImGui::BeginTooltip();
        ImGui::PushTextWrapPos(ImGui::GetFontSize() * 35.0f);
        ImGui::TextUnformatted(desc);
        ImGui::PopTextWrapPos();
        ImGui::EndTooltip();
    }
}


///=========================================================================================///
///                                      Set Viewer UI
///=========================================================================================///

//// UI main function
void setViewerUI(igl::opengl::glfw::Viewer &viewer)
{
    menu.callback_draw_viewer_window = [&]()
    {
        //// color preset:
        ImGui::GetStyle().Colors[ImGuiCol_WindowBg] = ImVec4(0.9f, 0.9f, 0.9f, 1.00f);
        ImGui::GetStyle().Colors[ImGuiCol_TitleBg] = ImVec4(0.9f, 0.9f, 0.9f, 1.00f);
        ImGui::GetStyle().Colors[ImGuiCol_TitleBgActive] = ImVec4(0.9f, 0.9f, 0.9f, 1.00f);
        ImGui::GetStyle().Colors[ImGuiCol_TitleBgCollapsed] = ImVec4(0.9f, 0.9f, 0.9f, 1.00f);

        ImGui::GetStyle().Colors[ImGuiCol_FrameBg] = ImVec4(1.0f, 1.0f, 1.0f, 1.00f);
        ImGui::GetStyle().Colors[ImGuiCol_FrameBgHovered] = ImVec4(1.0f, 1.0f, 1.0f, 0.50f);
        ImGui::GetStyle().Colors[ImGuiCol_FrameBgActive] = ImVec4(1.0f, 1.0f, 1.0f, 0.50f);

        ImGui::GetStyle().Colors[ImGuiCol_MenuBarBg] = ImVec4(0.9f, 0.9f, 0.9f, 1.00f);
        ImGui::GetStyle().Colors[ImGuiCol_Text] = ImVec4(0.0f, 0.0f, 0.0f, 1.00f);

        ImGui::GetStyle().Colors[ImGuiCol_PopupBg] = ImVec4(1.0f, 1.0f, 1.0f, 1.00f);


        //ImGui::TextWrapped();
        //// Define window position + size
        float menu_width = 240.f * menu.menu_scaling();

        //// Warning: do get the true windows width to relocate the menu, the viewer using highdpi (see Viewer.cpp to support highdpi display）
        int width_window, height_window;
        glfwGetWindowSize(viewer.window,&width_window, &height_window);

        ImGui::SetNextWindowPos(ImVec2(width_window - menu_width, 0.0f),ImGuiCond_Always);
        ImGui::SetNextWindowSize(ImVec2(0.0f, 0.0f), ImGuiCond_FirstUseEver);
        ImGui::SetNextWindowSizeConstraints(ImVec2(menu_width, -1.0f), ImVec2(menu_width, -1.0f));
        bool _viewer_menu_visible = true;
        ImGui::Begin(
                "Control Panel", &_viewer_menu_visible,
                ImGuiWindowFlags_NoSavedSettings
        );
        ImGui::PushItemWidth(ImGui::GetWindowWidth() * 0.4f);
        if (menu.callback_draw_viewer_menu) { menu.callback_draw_viewer_menu(); }
        ImGui::PopItemWidth();
        ImGui::End();
    };


    // Add content to the default menu window
    menu.callback_draw_viewer_menu = [&]()
    {

        //// global styles of UI
        float w = ImGui::GetContentRegionAvailWidth();
        float p = ImGui::GetStyle().FramePadding.x;
        float gap_between_controlGroups = 4.0f;

        float button_verticalGap = 2.0f;
        float button_horizontalGap = 4*p;
        float button_width = (w-button_horizontalGap)/2.f;

        ///////////////////////////////////////////////////////////////////////////
        //// Status Bar
        ///////////////////////////////////////////////////////////////////////////

        if (ImGui::CollapsingHeader("Status Bar", ImGuiTreeNodeFlags_DefaultOpen))
        {
            ImGui::Dummy(ImVec2(0.0f, 2.0f));
            float head_scale = 1.3f;
            float gap_between_renderGroups = 4.0f;
            //float half_width = (w - p) / 2.f;
            //float transparency;

            StatusBar();

            ImGui::Dummy(ImVec2(0.0f, gap_between_renderGroups));

        }
        ImGui::Dummy(ImVec2(0.0f, gap_between_controlGroups));

        ///////////////////////////////////////////////////////////////////////////
        //// Parameter Control
        ///////////////////////////////////////////////////////////////////////////

        if (ImGui::CollapsingHeader("Parameter Control", ImGuiTreeNodeFlags_DefaultOpen))
        {
            float head_scale = 1.3f;
            float gap_between_paraGroups = 8.0f;
            float half_width = (w - p) / 2.f;

            ImGui::Dummy(ImVec2(0.0f, 2.0f));

            //// shell parameter setting sliders here:
            ImGui::Text("Your Parameter 1");
            ImGui::SameLine(half_width, p);
            ImGui::SetNextItemWidth(half_width);
            ImGui::DragFloat("##Your Parameter 1", &parameter_1);

            ImGui::Text("Your Parameter 2");
            ImGui::SameLine(half_width, p);
            ImGui::SetNextItemWidth(half_width);
            ImGui::DragFloat("##Your Parameter 2", &parameter_2);

        }

        ImGui::Dummy(ImVec2(0.0f, gap_between_controlGroups));


        ///////////////////////////////////////////////////////////////////////////
        //// Operation Control
        ///////////////////////////////////////////////////////////////////////////

        if (ImGui::CollapsingHeader("Operation Control", ImGuiTreeNodeFlags_DefaultOpen))
        {
            //// gap between the button group and head
            ImGui::Dummy(ImVec2(0.0f, 2.0f));

            ////////////////////////////////////////////////////////////////////
            //// model&shell&parts related
            //// buttons for model/shell IO/generate

            if (ImGui::Button("Read", ImVec2(button_width, 0)))
            {
                inputFileName = igl::file_dialog_open();
                if( inputFileName.empty() )
                    return;

                mySurface.ClearSurface();

                mySurface.LoadModel((char*)inputFileName.data());

                mySurface.DelaunayTriangulation();

                myRender.ClearViewer(viewer);

                myRender.DrawObjModel(viewer, mySurface.inputSurfaceTriMesh);
                myRender.DrawProcessedModel(viewer, mySurface.processedTriMesh);
            }

            ImGui::SameLine(0, button_horizontalGap);

            if (ImGui::Button("Write", ImVec2(button_width, 0)))
            {
                /// TODO
            }

        }

        ImGui::Dummy(ImVec2(0.0f, gap_between_controlGroups));


        ///////////////////////////////////////////////////////////////////////////
        //// Render Control
        ///////////////////////////////////////////////////////////////////////////

        if (ImGui::CollapsingHeader("Render Control", ImGuiTreeNodeFlags_DefaultOpen))
        {
            ImGui::Dummy(ImVec2(0.0f, 2.0f));
            float head_scale = 1.3f;
            float gap_between_renderGroups = 4.0f;
            float half_width = (w - p) / 2.f;
            float transparency;

            ImGui::Dummy(ImVec2(0.0f, gap_between_renderGroups));
            ImGui::SetWindowFontScale(1);

            ImGui::Text("Show Ground");
            ImGui::SameLine(half_width, p);
            ImGui::Checkbox("##Show Ground", &visibleGround);

            ImGui::Text("Show Axes");
            ImGui::SameLine(half_width, p);
            ImGui::Checkbox("##Show Axes", &visibleAxes);

            ImGui::Text("Show Obj Model");
            ImGui::SameLine(half_width, p);
            ImGui::Checkbox("##Show Obj Model", &visibleObjModel);

            ImGui::Text("Show Processed Model");
            ImGui::SameLine(half_width, p);
            ImGui::Checkbox("##Show Processed Model", &visibleProcessedModel);

            ImGui::Dummy(ImVec2(0.0f, gap_between_renderGroups));

        }
        ImGui::Dummy(ImVec2(0.0f, gap_between_controlGroups));
    };

    viewer.plugins.push_back(&menu);
    viewer.data().face_based = true;
    viewer.core().background_color.setConstant(1.0f);
}
