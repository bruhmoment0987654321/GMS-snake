draw_set_font(Ft_pixel_font);
draw_text_transformed_color(30,30,"Score: " + string(score),1,1,0,c_lime,c_lime,c_lime,c_lime,1);
if(!instance_exists(Obj_snake)){
	draw_text_transformed_color(350,400,"GAME OVER! :{",5,5,0,c_lime,c_lime,c_lime,c_lime,1);
}
if(instance_exists(Obj_snake)){
	//stamina bar
	draw_sprite(Spr_health_back,0,9,65);
	draw_sprite(Spr_stamina_back,0,9,81);
	draw_sprite_ext(Spr_stamina_front,0,12,70,max(0,Obj_snake.slow_meter/Obj_snake.slow_meter_max),1,0,c_white,1);
	//health bar
	draw_sprite_ext(Spr_health_front,0,12,86,max(0,Obj_snake.health_/Obj_snake.health_max),1,0,c_white,1);	
}