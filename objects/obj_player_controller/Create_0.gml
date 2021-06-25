/// @description Initialize variables
// You can write your code in this editor

//Initialize variables
grav = 0.35;
maxHspeed = 12;
maxVspeed = 20;
haccel = 0.5;
jspd = 14;
hspd = 0;
vspd = 0;
jumps = 2;
controllerPlayer = -2
playerhealth = 100

//Assign controller to player
for (var i = 0; i < array_length(obj_gamepadJunk.playerInputDevice);i++)
{
	if obj_gamepadJunk.playerInputDevice[i] > -1
	{
		playerNumber = i
		controllerPlayer = obj_gamepadJunk.playerInputDevice[i]
		show_message(obj_gamepadJunk.playerInputDevice[i])
		obj_gamepadJunk.playerInputDevice[i] = -2
		i = 4
		break;
	}
}
//If there is no controller assigned to the player, destroy the instance
if controllerPlayer = -2
{
	instance_destroy()
}
