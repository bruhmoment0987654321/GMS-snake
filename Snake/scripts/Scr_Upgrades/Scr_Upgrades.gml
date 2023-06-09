function Upgrades(_upgrade_type){
	if(rectangle_in_rectangle(x,y,x+sprite_width,y+sprite_height,device_mouse_x_to_gui(0)-5, device_mouse_y_to_gui(0)-5, device_mouse_x_to_gui(0)+ 5, device_mouse_y_to_gui(0) + 5) == 2){
	image_blend = c_grey;
	if(mouse_check_button_pressed(mb_left)) && (global.skill_point > 0.5){
		global.skill_point -= 0.5;
		
		if(_upgrade_type == "attack"){
			global.upgradeAttack += 0.5;
		}else if(_upgrade_type == "speed"){
			global.upgradeSpeed += 0.5;	
		}else if(_upgrade_type == "time"){
			global.upgradeTime += 0.5;
		}
	}
	}else{
		image_blend = c_white;	
	}
	
	if(_upgrade_type == "attack"){
		if(global.upgradeAttack >= 3) || (global.skill_point <= 0.5){
			image_blend = c_gray;	
		}
	}else if(_upgrade_type == "speed"){
		if(global.upgradeSpeed >= 3) || (global.skill_point <= 0.5){
			image_blend = c_grey;	
		}
	}else if(_upgrade_type == "time"){
		if(global.upgradeTime >= 3) || (global.skill_point <= 0.5){
			image_blend = c_grey;	
		}
	}
}