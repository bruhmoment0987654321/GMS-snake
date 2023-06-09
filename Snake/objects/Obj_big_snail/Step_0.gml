timer--;
if(timer <= 0){
	if(instance_exists(Obj_snake)){
		where_to_go = point_direction(x,y,Obj_snake.x,Obj_snake.y);
		sprite_index = Spr_big_snail_start;
	}
	hsp = lengthdir_x(spd,where_to_go);
	vsp = lengthdir_y(spd,where_to_go);
}
if(hsp != 0) image_xscale = 4 * sign(hsp);

if(place_meeting(x,y,Obj_snake)) || (place_meeting(x,y,Obj_tail)){
	room = Room2;	
}

x += hsp;
y += vsp;