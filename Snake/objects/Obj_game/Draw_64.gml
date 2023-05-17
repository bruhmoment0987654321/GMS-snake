draw_text_transformed_color(30,30,"Score: " + string(score),1,1,0,c_lime,c_lime,c_lime,c_lime,1);
if(!instance_exists(Obj_snake)){
	draw_text_transformed_color(350,400,"GAME OVER! :{",5,5,0,c_lime,c_lime,c_lime,c_lime,1);
}

//debug
if(instance_exists(Obj_snake)){
	draw_text_transformed_color(30,50,"length: " + string(Obj_snake.length),1,1,0,c_lime,c_lime,c_lime,c_lime,1);
}
