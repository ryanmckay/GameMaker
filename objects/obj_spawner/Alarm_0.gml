/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1525DADF
/// @DnDArgument : "var" "xx"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "max" "room_width"
var xx = (random_range(0, room_width));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 716A441E
/// @DnDArgument : "var" "yy"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "max" "room_height"
var yy = (random_range(0, room_height));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5C88FAE1
/// @DnDArgument : "xpos" "xx"
/// @DnDArgument : "ypos" "yy"
/// @DnDArgument : "objectid" "obj_enemySpawn"
/// @DnDArgument : "layer" ""EnemyLayer""
/// @DnDSaveInfo : "objectid" "fff1dcd7-bfb9-46f7-b471-55449e6a1585"
instance_create_layer(xx, yy, "EnemyLayer", obj_enemySpawn);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7A6C16D1
/// @DnDArgument : "steps" "spawn_rate"
alarm_set(0, spawn_rate);