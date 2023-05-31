if(instance_exists(Obj_snake)){
	switch(state){
		case "follow":
			var direc = point_direction(x,y,Obj_snake.x,Obj_snake.y);
			hsp = lengthdir_x(spd,direc)*(global.time_slowed);
			vsp = lengthdir_y(spd,direc)*(global.time_slowed);
			if(!point_in_circle(Obj_snake.x,Obj_snake.y,x,y,rad)){
				state = "stand still";
			}
			if(place_meeting(x,y,Obj_fire)){
				state = "burning";
			}
		break;
		case "burning":
			health_ -= 0.1;
			hsp += choose(-1,1);
			vsp += choose(-1,1);
			if(!place_meeting(x,y,Obj_fire)){
				if(!point_in_circle(Obj_snake.x,Obj_snake.y,x,y,rad)){
					state = "stand still";
				}else{
					state = "follow";	
				}
			}
		break;
		case "stand still":
			hsp = 0;
			vsp = 0;
			if(point_in_circle(Obj_snake.x,Obj_snake.y,x,y,rad)){
				state = "follow";	
			}
		break;
		case "dead":
			sprite_index = Spr_snail_dead;
		break;
	}
}
image_speed = global.time_slowed;
if(hsp != 0) image_xscale = sign(hsp);
if(health_ <= 0) state = "dead"
x+=hsp;
y+=vsp;
