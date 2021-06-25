// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerMovement(moveRight, moveLeft, moveJump, moveJumpheld, moveDown, moveDownheld, moveDash, moveUp){

vspd += grav

if moveRight
{
	if hspd < 0
	{
	hspd += haccel * 3
	}
	hspd += haccel;
} 


if moveLeft
{
	if hspd > 0
	{
	hspd -= haccel * 3
	}
	hspd -= haccel;
}

if moveDown
{
	vspd = 	20
}
else
{
	grav = 0.35	
}

//Horizontal speed limiter
if abs(hspd) > abs(maxHspeed)
{
	hspd -= sign(hspd)*haccel
}

//Vertical speed limiter
if abs(vspd) > abs(maxVspeed)
{
	vspd += sign(vspd) * grav	
}

//Jumpcode
if moveJump and jumps > 0
{
	if jumps > 1
	{
		vspd = 0
		vspd -= jspd
		jumps -= 1
	}
	else
	{
	vspd = 0
	vspd -= (jspd / 1.5)
	jumps -= 1
	}
}

//Variable jumps
if vspd < 0 and !moveJumpheld vspd = max(vspd, -jspd/2);
//Refresh jumps
if !moveJump and place_meeting(x, y + 1, obj_walls)
{
	vspd = 0
	jumps = 2
}
else if jumps = 2
{
	jumps = 1	
}
//Stop if no keys are pressed
if !moveRight and !moveLeft
{
hspd -= sign(hspd) * haccel * 2
}

}

function scr_playerDashing(moveRight, moveLeft, moveJump, moveJumpheld, moveDown, moveDash, moveUp)
{
//Dashing
if moveDash and alarm[1] <= 0
{
	if moveRight
	{
		hspd = 30
		vspd = 0
		alarm[0] = room_speed / 4
	}
	
	if moveLeft
	{
		hspd = -30
		vspd = 0
		alarm[0] = room_speed / 4
	}
	
	if moveDown
	{
		vspd = 30
		hspd = 0
		alarm[0] = room_speed / 4
	}
	alarm[1] = room_speed * 1.5
}	
}
