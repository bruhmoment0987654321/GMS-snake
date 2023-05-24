left = keyboard_check(global.keyLeft);
right = keyboard_check(global.keyRight);
up = keyboard_check(global.keyUp)
if(move == false) && (up){
	move = true;
}
if(move){
	instance_create_depth(x,y,depth+1,Obj_tail,{
	image_speed : 600 - food_eaten
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

#region fruit touching
if(place_meeting(x,y,Obj_apple)){
	switch(Obj_apple.sprite_index){
		case 0:
		food_eaten += 10;
		break;
		case 1:
		food_eaten += 9;
		break;
		case 2:
		food_eaten += 11;
		break;
		case 3:
		food_eaten += 10;
		break;
		case 4:
		food_eaten += 15;
		break;
		case 5:
		food_eaten += 8;
		break;
		case 6:
		food_eaten += 12;
		spd = movesp + 3;
		break;
		case 7:
		food_eaten += 17;
		break;
	}
	score += 1;
	instance_destroy(Obj_apple);
	instance_create_layer(floor(random(room_width)),floor(random(room_height)),"Apple",Obj_apple);
}


#endregion

x += lengthdir_x(spd,image_angle);
y += lengthdir_y(spd,image_angle);
alarm[1] = 1;