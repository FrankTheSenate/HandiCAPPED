/// @description Checking collisions + finalising movement
// You can write your code in this editor

//Set vspd and hspd to 0 if colliding with object
repeat ( abs(hspd) ) {
    if ( !place_meeting(x + sign(hspd), y, obj_walls) ) {
        x += sign(hspd);
		
    } else {
		hspd = 0
        break;
    }
}

repeat ( abs(vspd) ) {
    if ( !place_meeting(x, y + sign(vspd), obj_walls) ) {
        y += sign(vspd);
    } else {
        break;
    }
}


