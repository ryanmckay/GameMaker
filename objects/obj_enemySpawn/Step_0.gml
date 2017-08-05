/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 0D3D0149
/// @DnDArgument : "xscale" ".02"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" ".02"
/// @DnDArgument : "yscale_relative" "1"
image_xscale += .02;
image_yscale += .02;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3AD1BFF0
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "value" "1"
if(image_xscale == 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 5B8F8A69
	/// @DnDParent : 3AD1BFF0
	image_xscale = 1;
	image_yscale = 1;

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0FDADF09
	/// @DnDParent : 3AD1BFF0
	/// @DnDArgument : "objind" "obj_enemy"
	/// @DnDSaveInfo : "objind" "7096d413-9190-4f8e-9c20-35895ca5775c"
	instance_change(obj_enemy, true);
}