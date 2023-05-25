left = keyboard_check(global.keyLeft);
right = keyboard_check(global.keyRight);
up = keyboard_check(global.keyUp);
stop = keyboard_check(global.keyTime);

if(move == false) && (up){
	move = true;
}

//slow down time
if(stop){
	global.time_slowed = 0.2;	
}else{
	global.time_slowed = 1;	
}

if(move){
	instance_create_depth(x,y,depth+1,Obj_tail,{
	image_speed : 500
	});	
}
	#region movement
	var _keysPressed = left + right + up;
	if (_keysPressed > 0){
		if(up){
			spd = movesp;		
		}
		
		if(left){
			direction += dir;	
		}
		
		if(right){
			direction -= dir;	
		}
	}
	image_angle = direction;
	#endregion
#region visuals
#endregion

#region death
if (x<0) || (x>room_width) || (y<0) || (y>room_height){
	instance_destroy();
	instance_destroy(Obj_tail);
}
#endregion

x += lengthdir_x(spd*global.time_slowed,image_angle);
y += lengthdir_y(spd*global.time_slowed,image_angle);