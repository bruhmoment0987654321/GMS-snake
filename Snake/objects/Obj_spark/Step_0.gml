speed = 4*global.time_slowed;
image_speed = global.time_slowed;
life--;
if(life <= 0){
	image_alpha -= 0.1;
}

if(image_alpha <= 0){
	instance_destroy();	
}