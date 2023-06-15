#region restarting everything after you die
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
		global.fireeffect = false;
		global.spark_effect = false;
		global.xp_level = 0;
		game_over = true;
	}

	if(game_over = true){
		if(keyboard_check_pressed(vk_anykey)){
			room_goto(Room1);	
			game_over = false;
		}
	}
#endregion
#region xp functions
	if(global.xp >= max_xp){
		if(global.xp_level == 0){
			max_xp += 500;	
		}
		if(global.xp_level >= 1) && (global.xp_level <= 3){
			max_xp += 1000;
		}
		if(global.xp_level >= 4){
			max_xp += 1500;	
		}
		if(global.xp_level >= 5){
			max_xp += 2000;
		}
		global.skill_point += 0.5;
		global.xp_level += 0.5;
	}
	if(global.xp_level > 6){
		show_message("Bye.")
		room = Rm_end;
	}
#endregion
#region upgrades
	switch(global.upgradeAttack){
		case 1: 
			global.upgradeAttackAmount = 0.5;
			Obj_Upgrade_attack.image_index = 1;
		break;
		case 2: 
			global.upgradeAttackAmount = 0.8; 
			Obj_Upgrade_attack.image_index = 2;
		break;
		case 3: 
			global.upgradeAttackAmount = 1;
			global.fireeffect = true;
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
		case 3: 
			global.upgradeSpeedAmount = movesp*0.9; 
			global.spark_effect = true;
		break;
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
#endregion
#region creating fire sparks
if(global.fireeffect = true){
	if(mouse_check_button_pressed(mb_left)){
		var fireamount = 8;
		repeat(fireamount){
			instance_create_layer(mouse_x,mouse_y,"Particles",Obj_fire_spark);
		}
	}
}
#endregion
#region spawning the waves
if(global.xp_level > 2) && (!wave1Spawned){
	wave_spawn("pig");
	wave1Spawned = true;
}

if(global.xp_level > 6) && (!bossSpawned){
	wave_spawn("big snail")
	bossSpawned = true;	
}
#endregion