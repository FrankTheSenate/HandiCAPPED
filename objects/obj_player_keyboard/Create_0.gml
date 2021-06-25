/// @description Initialize variables
// You can write your code in this editor

grav = 0.35;
maxHspeed = 12;
maxVspeed = 20;
haccel = 0.5;
jspd = 14;
hspd = 0;
vspd = 0;
jumps = 2;
playerNumber = -2

for (var i = 0; i<array_length(obj_gamepadJunk.playerInputDevice);i++)
{
	if obj_gamepadJunk.playerInputDevice[i] = -1
	{
	playerNumber = i
	obj_gamepadJunk.playerInputDevice[i] = -2
	show_message(playerNumber);
	}
}
if playerNumber = -2
{
	instance_destroy();
}

