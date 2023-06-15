if(instance_exists(Obj_snake)){
	switch(state){
		case "wait":
			sprite_index = Spr_telepig_teleport;
			timer--;
			if(timer <= 0){
				state = "attack";
			}
			if(!point_in_circle(Obj_snake.x,Obj_snake.y,x,y,rad)){
				state = "stand still";
			}
		break;
		case "stand still":
			image_alpha += 0.1;
			sprite_index = Spr_telepig;
			if(point_in_circle(Obj_snake.x,Obj_snake.y,x,y,rad)){
				state = "wait";	
			}
		break;
		case "attack":
			sprite_index = Spr_telepig_shoot;
			shoottimer--;
			instance_create_layer(x,y,"Telepig",Obj_spark,{
				direction : point_direction(x,y,Obj_snake.x,Obj_snake.y),
				image_blend : #00FFFF
			});
			
			if(shoottimer <= 0){
				shoottimer = irandom_range(room_speed*1,room_speed*2);
				timer = irandom_range(room_speed*3,room_speed*6);
				
				if(!point_in_circle(Obj_snake.x,Obj_snake.y,x,y,rad)){
					state = "stand still";
				}else{
					state = "wait"	
				}
			}
		break;
		case "dead": 
		image_blend = #FFC0CB;
		sprite_index = Spr_spikeman_dead;
		break;
	}
}

if(place_meeting(x,y,Obj_fire)){
	health_ -= 0.1;
}
if(place_meeting(x,y,Obj_snakespark)){
	health_ -= 1;
	with(other){
		instance_destroy();	
	}
}
image_speed = global.time_slowed;
if(health_ <= 0) state = "dead";