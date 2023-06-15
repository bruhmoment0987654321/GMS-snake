if(!instance_exists(Obj_telepig)){
	Spawn_off_camera(Obj_snail,irandom_range(20,40));
	Spawn_off_camera(Obj_spikeman,2);
}else{
	Spawn_off_camera(Obj_snail,irandom_range(20,40));
	Spawn_off_camera(Obj_telepig,irandom_range(10,20));
	Spawn_off_camera(Obj_spikeman,irandom_range(0,3));
}
alarm[0] = room_speed*120;