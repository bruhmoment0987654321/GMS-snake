left = keyboard_check(global.keyLeft);
right = keyboard_check(global.keyRight);
up = keyboard_check(global.keyUp)
down = keyboard_check(global.keyDown);

if(follow == false){
	#region movement
	var _keysPressed = left + right + up + down;
	if (_keysPressed > 0){
		if(dir != 2){
			if(right){
				dir = 0;	
			}
		}
		if(dir != 1){
			if(down){
				dir = 3;	
			}
		}
		if(dir != 0){
			if(left){
				dir = 2;
			}
		}
		if(dir != 3){
			if(up){
				dir = 1;	
			}
		}
	}
	image_angle = 90*dir;
	#endregion
}else{
	x = lerp(x,followthisone.x,0.01);
	y = lerp(y,followthisone.y,0.01);
}


#region visuals

#endregion

#region death
if (x<0) || (x>room_width) || (y<0) || (y>room_height){
	instance_destroy();
}
#endregion

x += lengthdir_x(movesp,image_angle);
y += lengthdir_y(movesp,image_angle);