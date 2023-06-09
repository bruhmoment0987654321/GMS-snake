function Spawn_off_camera(_Obj,_num){
	var xx,yy;
	var pad = 32;
	repeat(_num){
		xx = random_range(0,room_width);
		yy = random_range(0,room_height);
	
		while((point_in_circle(xx,yy,Obj_snake.x,Obj_snake.x,500))^^
		(point_in_rectangle(xx,yy,global.cx-pad,global.cy-pad,global.cx+global.view_w+pad,global.cy+global.view_h+pad))){
			xx = random_range(0,room_width);
			yy = random_range(0,room_height);
		}
		
		instance_create_layer(xx,yy,"Enemy",_Obj);
	}
}