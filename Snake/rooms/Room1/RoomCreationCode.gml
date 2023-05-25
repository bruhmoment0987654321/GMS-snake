room_width = irandom_range(2000,5000);
room_height = irandom_range(2000,5000);
var wow = (room_width);
var sprsize = 32;
repeat(irandom(round(wow))){
	instance_create_layer(irandom(room_width-sprsize)+sprsize/2, irandom(room_height-sprsize)+sprsize/2,"Grass",Obj_grass_tile)
}
instance_create_depth(0,0,0,Obj_game);
instance_create_layer(floor(random_range(20,room_width-10)),floor(random_range(20,room_height-10)),"Snake",Obj_snake);
repeat(50){
	var dx = floor(random_range(20,room_width-10))
	var dy = floor(random_range(20,room_height-10))
	if(!point_in_circle(dx,dy,Obj_snake.x,Obj_snake.y,300)){
		instance_create_layer(dx,dy,"Enemy",Obj_enemy);
	}
}
show_debug_message("room width is "+ string(room_width) +" and room height is "+ string(room_height));