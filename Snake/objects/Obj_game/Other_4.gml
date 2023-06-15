if(room == Room1){
	if(instance_exists(Obj_cam)){
		if(!instance_exists(Obj_telepig)){
			Spawn_off_camera(Obj_snail,50);
			Spawn_off_camera(Obj_spikeman,1);
		}
		alarm[0] = room_speed*120;
	}
}