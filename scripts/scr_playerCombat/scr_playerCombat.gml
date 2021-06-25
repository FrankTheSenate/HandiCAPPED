// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Create and bind attack instance to an attacking player
function scr_playerAttackingGamepad(attackDirection, attackingPlayer){
	attackInstance = instance_create_depth(x,y, -200, obj_attack)
	with attackInstance
	{
		boundPlayer = attackingPlayer
		image_angle = attackDirection
	}
}
//Haven't incorportated this yet
function scr_playerAttackingKeyboard(){
	
}

//Create and bind block instance to a blocking player
function scr_playerBlockingGamepad(blockDirection, blockingPlayer)
{
	blockInstance = instance_create_depth(x,y, -201, obj_block)
	with blockInstance
	{
		boundPlayer = blockingPlayer
		image_angle = blockDirection
	}
}