switch(state){
	case "follow":
		var direc = point_direction(x,y,Obj_snake.x,Obj_snake.y);
		hsp = lengthdir_x(spd,direc);
		vsp = lengthdir_y(spd,direc);
		if(!point_in_circle(Obj_snake.x,Obj_snake.y,x,y,rad)){
			state = "stand still"
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
	
	break;
}

if(hsp != 0) image_xscale = sign(hsp);

x+=hsp;
y+=vsp;
