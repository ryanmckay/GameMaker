/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0EA6B5D7
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "02a0d349-b302-4462-b5d8-ec13e8eafe92"
var l0EA6B5D7_0 = false;
l0EA6B5D7_0 = instance_exists(obj_player);
if(l0EA6B5D7_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 422C29B8
	/// @DnDParent : 0EA6B5D7
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 70F45E48
	/// @DnDParent : 0EA6B5D7
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 3BC7F953
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 242A6C1D
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0CF0700F
	/// @DnDApplyTo : 7f53fa16-7669-42ae-82d2-deb97af0459f
	/// @DnDParent : 242A6C1D
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "theScore"
	with(obj_score) {
	theScore += 5;
	
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 75120EC8
	/// @DnDParent : 242A6C1D
	/// @DnDArgument : "sound" "sound_death"
	/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
	/// @DnDSaveInfo : "sound" "05142fe5-a23e-4021-ac44-0854ed51d839"
	audio_sound_pitch(sound_death, random_range(0.8,1.2));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 19FD2D32
	/// @DnDParent : 242A6C1D
	/// @DnDArgument : "soundid" "sound_death"
	/// @DnDSaveInfo : "soundid" "05142fe5-a23e-4021-ac44-0854ed51d839"
	audio_play_sound(sound_death, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 407EE625
	/// @DnDParent : 242A6C1D
	instance_destroy();
}