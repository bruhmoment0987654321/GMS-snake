left = keyboard_check(global.keyLeft);
right = keyboard_check(global.keyRight);
up = keyboard_check(global.keyUp);
stop = keyboard_check(global.keyTime);
kill = mouse_check_button_pressed(mb_left);
shoot = keyboard_check_pressed(global.keyShock);
if(up) && (!move){
	move = true;
}

#region slow down time and attacking enemies
if(shoot) && (global.spark_effect){
	instance_create_layer(x,y,"Snake", Obj_snakespark,{
		direction : image_angle,
		speed : 30
	});	
}
if(stop) && (slow_meter > 0){
	slow_meter -= 0.15;
	global.time_slowed = global.time_amount;
	var snail = instance_nearest(mouse_x,mouse_y,Obj_snail);
	var spike = instance_nearest(mouse_x,mouse_y,Obj_spikeman);
	var pig = instance_nearest(mouse_x,mouse_y,Obj_telepig);
	if(place_meeting(mouse_x,mouse_y,spike)){
		if(kill){
			spike.health_ -= 1+global.upgradeAttackAmount;
			if(global.fireeffect){
				var prob = irandom_range(1,4);
				if(prob == 4){
					instance_create_layer(spike.x,spike.y,"Particles",Obj_fire,{
						image_xscale : spike.image_xscale,
						image_yscale : spike.image_yscale
					});
				}
			}
			repeat(5){
				instance_create_layer(mouse_x,mouse_y,"Particles",Obj_spike_spark);	
			}
		}
	}
	if(place_meeting(mouse_x,mouse_y,pig)){
		if(kill){
			pig.health_ -= 1+global.upgradeAttackAmount;
			if(global.fireeffect){
				var prob = irandom_range(1,4);
				if(prob == 4){
					instance_create_layer(pig.x,pig.y,"Particles",Obj_fire,{
						image_xscale : pig.image_xscale,
						image_yscale : pig.image_yscale
					});
				}	
			}
		}
	}
	if(place_meeting(mouse_x,mouse_y,snail)){
		if(kill){
			snail.health_ -= 1+global.upgradeAttackAmount;
			if(global.fireeffect){
				var prob = irandom_range(1,4);
				if(prob == 4){
					instance_create_layer(snail.x,snail.y,"Particles",Obj_fire,{
						me : id,
						image_xscale : snail.image_xscale,
						image_yscale : snail.image_yscale
					});
				}
			}
			repeat(5){
				instance_create_layer(mouse_x,mouse_y,"Particles",Obj_snail_spark);	
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
		spd = movesp;		
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
with(Obj_tail){
	if(place_meeting(x,y,Obj_enemy_par)){
		Obj_snake.health_-= 0.007;	
	}
}
if(place_meeting(x,y,Obj_enemy_par)){
	health_ -= 0.007;
}

#endregion
#region death
if (x<0) || (x>room_width) || (y<0) || (y>room_height) || (health_<0){
	instance_destroy();
	instance_destroy(Obj_tail);
}
#endregion
x += lengthdir_x((spd + global.upgradeSpeedAmount)*global.time_slowed,image_angle);
y += lengthdir_y((spd + global.upgradeSpeedAmount)*global.time_slowed,image_angle);