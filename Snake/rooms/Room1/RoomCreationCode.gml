room_width = irandom_range(3000,7000);
room_height = irandom_range(3000,7000);
var sprsize = 32;
repeat(irandom(round(room_width))){
	instance_create_layer(irandom(room_width-sprsize)+sprsize/2, irandom(room_height-sprsize)+sprsize/2,"Grass",Obj_grass_tile)
}
instance_create_depth(0,0,0,Obj_game);
instance_create_layer(room_width/2,room_height/2,"Snake",Obj_snake);
var rand = (room_height/100)*5
repeat(round(rand)){
	var dx = floor(random_range(20,room_width-10));
	var dy = floor(random_range(20,room_height-10));

	if(!point_in_circle(dx,dy,Obj_snake.x,Obj_snake.y,300)){
		instance_create_layer(dx,dy,"Enemy",Obj_snail);
	}
}

repeat((room_width/100)*5){
	var dx2 = floor(random_range(20,room_width-10));
	var dy2 = floor(random_range(20,room_height-10));
	if(!point_in_circle(dx2,dy2,Obj_snake.x,Obj_snake.y,250)){
		instance_create_layer(dx2,dy2,"Enemy",Obj_spikeman);
	}	
}
instance_create_depth(0,0,0,Obj_cam);
show_debug_message("room width is "+ string(room_width) +" and room height is "+ string(room_height));