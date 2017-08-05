/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 62CE5942
/// @DnDArgument : "alpha" ".02"
/// @DnDArgument : "alpha_relative" "1"
image_alpha += .02;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C147412
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(image_alpha > 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 3ADD073D
	/// @DnDParent : 7C147412
	image_alpha = 1;
}