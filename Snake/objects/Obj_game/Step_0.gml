if(!instance_exists(Obj_snake)){
	score = 0;
	global.upgradeTime = 0;
	global.upgradeAttack = 0;
	global.upgradeSpeed = 0;
	global.upgradeSpeedAmount = 0;
	global.upgradeTimeAmount = 0;
	global.upgradeAttackAmount = 0;
	global.xp = 0;
	global.skill_point = 0;
	game_over = true;
}

if(game_over = true){
	if(keyboard_check_pressed(vk_anykey)){
		room_restart();	
		game_over = false;
	}
}
switch(global.upgradeAttack){
	case 1: 
		global.upgradeAttackAmount = 0.5;
		Obj_Upgrade_attack.image_index = 1;
	break;
	case 2: 
		global.upgradeAttackAmount = 1; 
		Obj_Upgrade_attack.image_index = 2;
	break;
	case 3: 
		global.upgradeAttackAmount = 3;
		Obj_cursor.sprite_index = Spr_arrow_fire;
	break;
}

switch(global.upgradeSpeed){
	case 1: 
		global.upgradeSpeedAmount = movesp*0.2; 
		Obj_Upgrade_speed.image_index = 1;
	break;
	case 2: 
		global.upgradeSpeedAmount = movesp*0.4; 
		Obj_Upgrade_speed.image_index = 2;
	break;
	case 3: global.upgradeSpeedAmount = movesp*0.9; break;
}

switch(global.upgradeTime){
	case 1:
		global.upgradeTimeAmount = global.time_amount*0.3;
		Obj_Upgrade_time.image_index = 1;
	break;
	case 2: 
		global.upgradeTimeAmount = global.time_amount*0.6;
		Obj_Upgrade_time.image_index = 1;
	break;
	case 3: global.upgradeTimeAmount = 0.2; break;
}

//
//making the game harder
if(score > 10000){
	
}	