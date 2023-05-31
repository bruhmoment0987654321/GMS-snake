if(instance_exists(Obj_snake)){
	switch(state){
		case "teleport":
			sprite_index = Spr_telepig_teleport;
			if(!point_in_circle(Obj_snake.x,Obj_snake.y,x,y,rad)){
				state = "stand still";
			}
		break;
		case "stand still":
			hsp = 0;
			vsp = 0;
			sprite_index = Spr_telepig;
			if(point_in_circle(Obj_snake.x,Obj_snake.y,x,y,rad)){
				state = "teleport";	
			}
		break;
		case "dead":
			sprite_index = Spr_snail_dead;
		break;
	}
}

if(place_meeting(x,y,Obj_fire)){
	health_ -= 0.1;
}
image_speed = global.time_slowed;
if(hsp != 0) image_xscale = sign(hsp);
if(health_ <= 0) state = "dead"
x+=hsp;
y+=vsp;
