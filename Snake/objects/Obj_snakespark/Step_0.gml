speed = 10*global.time_slowed;
image_speed = global.time_slowed;
life -= global.time_slowed;
image_blend = c_yellow;
if(life <= 0){
	image_alpha -= 0.1*global.time_slowed;
}

if(image_alpha <= 0){
	instance_destroy();	
}

if(place_meeting(x,y,Obj_spark)){
	with(other){
		instance_destroy();	
	}
}