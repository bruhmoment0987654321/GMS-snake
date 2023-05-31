if(rectangle_in_rectangle(x,y,x+sprite_width,y+sprite_height,device_mouse_x_to_gui(0)-5, device_mouse_y_to_gui(0)-5, device_mouse_x_to_gui(0)+ 5, device_mouse_y_to_gui(0) + 5) == 2){
	image_blend = c_grey;
	if(mouse_check_button_pressed(mb_left)) && (global.skill_point > 0){
		global.upgradeSpeed += 0.5;
	}
}else{
	image_blend = c_white	
}

if(global.upgradeSpeed >= 3) && (global.skill_point == 0){
	image_blend = c_grey;	
}