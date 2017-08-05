/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 06A35FD6
/// @DnDArgument : "var" "vc"
/// @DnDArgument : "value" "view_camera[0]"
var vc = view_camera[0];

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 720F6FB0
/// @DnDArgument : "alpha" "false"
draw_set_colour($FFFFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 0978E3A9
/// @DnDArgument : "font" "font_score"
/// @DnDSaveInfo : "font" "09fa5483-b8c6-4b86-9d56-6f65f96a7abb"
draw_set_font(font_score);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 66EBF503
/// @DnDArgument : "var" "cameraWidth"
/// @DnDArgument : "value" "camera_get_view_width(vc)"
var cameraWidth = camera_get_view_width(vc);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 534A665A
/// @DnDArgument : "var" "cameraX"
/// @DnDArgument : "value" "camera_get_view_x(vc)"
var cameraX = camera_get_view_x(vc);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 37A9AD18
/// @DnDArgument : "var" "cameraY"
/// @DnDArgument : "value" "camera_get_view_y(vc)"
var cameraY = camera_get_view_y(vc);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 5F85DF54
/// @DnDArgument : "var" "vc"
/// @DnDArgument : "value" "view_camera[0]"
var vc = view_camera[0];

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2F32AA3C
/// @DnDArgument : "x" "cameraX + (cameraWidth/2)"
/// @DnDArgument : "y" "cameraY+25"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "global.theScore"
draw_text(cameraX + (cameraWidth/2), cameraY+25,  + string(global.theScore));