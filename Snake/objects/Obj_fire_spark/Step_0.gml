image_alpha -= 0.1;
if(image_alpha < 0){
	instance_destroy();	
}
image_index = irandom_range(0,4);
image_speed = 1;