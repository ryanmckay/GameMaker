/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 0833DC0A
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 149CF947
/// @DnDArgument : "expr" "random_range(-4,4)"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "direction"
direction += random_range(-4,4);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 7BDA62A7
/// @DnDArgument : "speed" "16"
speed = 16;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 1A86D19B
/// @DnDArgument : "angle" "direction"
image_angle = direction;