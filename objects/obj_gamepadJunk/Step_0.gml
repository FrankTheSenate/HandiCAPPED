/// @description Insert description here
// You can write your code in this editor

//Check for gamepad button start and assign controller to player
for (var i = 0;  i < 8; i++)
{
	if 	gamepad_button_check_pressed(i, gp_start)
	{
		if playerInputDevice[n] = -2 and n < 4
		{
			playerInputDevice[n] = i
			n++
		}
	}
}

//Check for keyboard button enter and assign keyboard to a player
if keyboard_check_pressed(vk_enter)
{
	if playerInputDevice[n] = -2	and n < 4
	{
		playerInputDevice[n] = -1
		n++
	}
}

//Initialize game
if keyboard_check(vk_f1)
{
	room_goto(Room1)
}