if(room == Room1){
	if(instance_exists(Obj_cam)){
		if(room == Room1){
			if(!instance_exists(Obj_telepig)){
				Spawn_off_camera(Obj_snail,50);
			}
			alarm[0] = room_speed*120;
		}
	}
}