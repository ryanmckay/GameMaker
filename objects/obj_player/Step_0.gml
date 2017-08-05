/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 6A237CCB
/// @DnDArgument : "var" "dir"
/// @DnDArgument : "value" "point_direction(x,y,mouse_x,mouse_y)"
var dir = point_direction(x,y,mouse_x,mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 60498E2D
/// @DnDArgument : "angle" "dir"
image_angle = dir;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 79503FF5
/// @DnDArgument : "key" "ord("D")"
var l79503FF5_0;
l79503FF5_0 = keyboard_check(ord("D"));
if (l79503FF5_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 335E7260
	/// @DnDParent : 79503FF5
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += 4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2CE8AA0B
/// @DnDArgument : "key" "ord("A")"
var l2CE8AA0B_0;
l2CE8AA0B_0 = keyboard_check(ord("A"));
if (l2CE8AA0B_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 28A36E24
	/// @DnDParent : 2CE8AA0B
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += -4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2E19B134
/// @DnDArgument : "key" "ord("W")"
var l2E19B134_0;
l2E19B134_0 = keyboard_check(ord("W"));
if (l2E19B134_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 213C6AB9
	/// @DnDParent : 2E19B134
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += -4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2144CBB5
/// @DnDArgument : "key" "ord("S")"
var l2144CBB5_0;
l2144CBB5_0 = keyboard_check(ord("S"));
if (l2144CBB5_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 42D588E7
	/// @DnDParent : 2144CBB5
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += 4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4A9CD83F
var l4A9CD83F_0;
l4A9CD83F_0 = keyboard_check(vk_space);
if (l4A9CD83F_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2EC15596
	/// @DnDParent : 4A9CD83F
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(cooldown < 1)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0D82FD8A
		/// @DnDParent : 2EC15596
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDArgument : "layer" ""BulletsLayer""
		/// @DnDSaveInfo : "objectid" "31657184-6ebb-4135-8eea-fcfdf71e541d"
		instance_create_layer(x, y, "BulletsLayer", obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0B677151
		/// @DnDParent : 2EC15596
		/// @DnDArgument : "expr" "10"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 10;
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 07E9AF9B
var l07E9AF9B_0;
l07E9AF9B_0 = mouse_check_button(mb_left);
if (l07E9AF9B_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 641E9132
	/// @DnDParent : 07E9AF9B
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(cooldown < 1)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2C76BECB
		/// @DnDParent : 641E9132
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDArgument : "layer" ""BulletsLayer""
		/// @DnDSaveInfo : "objectid" "31657184-6ebb-4135-8eea-fcfdf71e541d"
		instance_create_layer(x, y, "BulletsLayer", obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 05726B46
		/// @DnDParent : 641E9132
		/// @DnDArgument : "expr" "10"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 10;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 1CADAA38
	/// @DnDParent : 07E9AF9B
	var l1CADAA38_0;
	l1CADAA38_0 = keyboard_check(vk_space);
	if (l1CADAA38_0)
	{
	
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3AD38D5D
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;