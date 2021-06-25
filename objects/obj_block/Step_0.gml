/// @description Insert description here
// You can write your code in this editor
//Set position to player who initiated block
x = boundPlayer.x
y = boundPlayer.y
//Block in the direction of left stick
image_angle = boundPlayer.leftStickDirection + 180
//Destroy instance if let go of block button
if boundPlayer.controllerBlockrelease
{
	instance_destroy()	
}

