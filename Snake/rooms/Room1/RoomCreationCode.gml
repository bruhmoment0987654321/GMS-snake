room_width = irandom_range(3000,7000);
room_height = irandom_range(3000,7000);
var sprsize = 32;
repeat(irandom(round(room_width))){
	instance_create_layer(irandom(room_width-sprsize)+sprsize/2, irandom(room_height-sprsize)+sprsize/2,"Grass",Obj_grass_tile)
}
instance_create_layer(room_width/2,room_height/2,"Snake",Obj_snake);
repeat((room_width/100)*5){
	var dx2 = floor(random_range(20,room_width-10));
	var dy2 = floor(random_range(20,room_height-10));
	if(!point_in_circle(dx2,dy2,Obj_snake.x,Obj_snake.y,250)){
		instance_create_layer(dx2,dy2,"Enemy",Obj_spikeman);
	}	
}
instance_create_depth(0,0,0,Obj_cam);
instance_create_depth(0,0,0,Obj_game);
show_debug_message("room width is "+ string(room_width) +" and room height is "+ string(room_height));