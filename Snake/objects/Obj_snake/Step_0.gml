left = keyboard_check(global.keyLeft);
right = keyboard_check(global.keyRight);
up = keyboard_check(global.keyUp);
stop = keyboard_check(global.keyTime);
kill = mouse_check_button_pressed(mb_left);
if(up){
	move = true;
}

#region slow down time
if(stop) && (slow_meter > 0){
	slow_meter -= 0.15;
	global.time_slowed = global.time_amount;
	var snail = instance_nearest(mouse_x,mouse_y,Obj_snail);
	var spike = instance_nearest(mouse_x,mouse_y,Obj_spikeman);
	if(place_meeting(mouse_x,mouse_y,spike)){
		if(kill){
			spike.health_ -= 1+global.upgradeAttackAmount;
			repeat(5){
				instance_create_layer(mouse_x,mouse_y,"Enemy",Obj_spike_spark);	
			}
		}
	}
	if(place_meeting(mouse_x,mouse_y,snail)){
		if(kill){
			snail.health_ -= 1+global.upgradeAttackAmount;
			repeat(5){
				instance_create_layer(mouse_x,mouse_y,"Enemy",Obj_snail_spark);	
			}
		}
	}
}else{
	global.time_slowed = 1;	
}

if(!stop){
	slow_meter += 0.1;	
}
#endregion
#region tail growth
if(move){
	instance_create_depth(x,y,depth+1,Obj_tail,{
	image_speed : 500,
	image_blend : color
	});	
}
#endregion
#region time slow meter & health bar
if(health_ > health_max){
	health_ = health_max;	
}
if(health_<= 0){
	health_ = 0;
}
if(slow_meter > slow_meter_max){
	slow_meter = slow_meter_max;	
}
if(slow_meter <= 0){
	slow_meter = 0;
}
#endregion
#region movement
	if(up){
		spd = movesp + global.upgradeSpeedAmount;		
	}else{
		spd = 0;	
	}
	
	if(left){
		direction += dir;	
	}
		
	if(right){
		direction -= dir;	
	}
	image_angle = direction;
#endregion
#region snake head and tail touching enemies
/*with(Obj_tail){
	if(place_meeting(x,y,Obj_enemy_par)){
		Obj_snake.health_-= 5;	
	}
}
if(place_meeting(x,y,Obj_enemy_par)){
	health_ -= 100;
}
*/
#endregion
#region death
if (x<0) || (x>room_width) || (y<0) || (y>room_height) || (health_<0){
	instance_destroy();
	instance_destroy(Obj_tail);
}
#endregion
time_slowed_amount = global.time_slowed-(global.upgradeTimeAmount);
x += lengthdir_x(spd*(time_slowed_amount),image_angle);
y += lengthdir_y(spd*(time_slowed_amount),image_angle);