/// @description Insert description here
// You can write your code in this editor
//Initialize controls
// pees less epically
gamepad_set_axis_deadzone(controllerPlayer, 0.1)
controllerRight = gamepad_button_check(controllerPlayer, gp_padr)
controllerLeft = gamepad_button_check(controllerPlayer, gp_padl)
controllerJump = gamepad_button_check_pressed(controllerPlayer, gp_face1)
controllerJumpheld = gamepad_button_check(controllerPlayer, gp_face1)
controllerDown = gamepad_button_check(controllerPlayer, gp_padd)
controllerDownheld = gamepad_button_check_pressed(controllerPlayer, gp_padd)
controllerDash = gamepad_button_check(controllerPlayer, gp_shoulderr) || gamepad_button_check(controllerPlayer, gp_shoulderl)
controllerUp = gamepad_button_check(controllerPlayer, gp_padu)
controllerBlock = gamepad_button_check_pressed(controllerPlayer, gp_shoulderlb) || gamepad_button_check_pressed(controllerPlayer, gp_shoulderrb)
controllerBlockrelease = gamepad_button_check_released(controllerPlayer, gp_shoulderlb) || gamepad_button_check_released(controllerPlayer, gp_shoulderrb)
haxRight = gamepad_axis_value(controllerPlayer, gp_axisrh);
vaxRight = gamepad_axis_value(controllerPlayer, gp_axisrv);
rightStickDirection = point_direction(0, 0, haxRight, vaxRight);
haxLeft = gamepad_axis_value(controllerPlayer, gp_axislh);
vaxLeft = gamepad_axis_value(controllerPlayer, gp_axislv);
leftStickDirection = point_direction(0, 0, haxLeft, vaxLeft);

//Call movement scripts
scr_playerMovement(controllerRight, controllerLeft, controllerJump, controllerJumpheld, controllerDown, controllerDownheld, controllerDash, controllerUp);

scr_playerDashing(controllerRight, controllerLeft, controllerJump, controllerJumpheld, controllerDown, controllerDownheld, controllerDash, controllerUp);

//If blocking, call block script
if controllerBlock
{
	scr_playerBlockingGamepad(leftStickDirection, id)
}

//If timer between attacks is up, allow player to attack again
if alarm[2] < 0
{
	if haxRight > 0 or haxRight < 0 
	{
		scr_playerAttackingGamepad(rightStickDirection, id)
		alarm[2] = room_speed / 3
	}
 
	else if vaxRight > 0 or vaxRight < 0
	{
		scr_playerAttackingGamepad(rightStickDirection, id)	
		alarm[2] = room_speed / 3
	}
}