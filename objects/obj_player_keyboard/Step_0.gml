/// @description Insert description here
// You can write your code in this editor

keyboardRight = keyboard_check(ord("D"))
keyboardLeft = keyboard_check(ord("A"))
keyboardJump = keyboard_check_pressed(vk_space)
keyboardJumpheld = keyboard_check(vk_space)
keyboardDown = keyboard_check(ord("S"))

controllerRight = gamepad_button_check(controllerPlayer, gp_padr)
controllerLeft = gamepad_button_check(controllerPlayer, gp_padl)
controllerJump = gamepad_button_check(controllerPlayer, gp_face1)
controllerDown = gamepad_button_check(controllerPlayer, gp_padd)

vspd += grav

if keyboardRight
{
	if hspd < 0
	{
	hspd += haccel * 3
	}
	hspd += haccel;
} 


if keyboardLeft
{
	if hspd > 0
	{
	hspd -= haccel * 3
	}
	hspd -= haccel;
}

if keyboardJump
{
	if jumps > 0
	{
		vspd = 0
		vspd -= jspd
		jumps -= 1
	}
}

if vspd < 0 and !keyboardJumpheld vspd = max(vspd, -jspd/2);

if !keyboardJump and place_meeting(x, y + 1, obj_walls)
{
	vspd = 0
	jumps = 2
}

if !keyboardRight and !keyboardLeft
{
hspd -= sign(hspd) * haccel * 3

}