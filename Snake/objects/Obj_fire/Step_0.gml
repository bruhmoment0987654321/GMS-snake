life--;
if(place_meeting(x,y,Obj_snail)){
	var snail = instance_nearest(x,y,Obj_snail);
	x = snail.x;
	y = snail.y;
}

if(life < 0){
	image_alpha -= 0.1;
	if(image_alpha < 0){
		instance_destroy();	
	}
}