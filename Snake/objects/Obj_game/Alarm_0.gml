if(!instance_exists(Obj_telepig)){
	Spawn_off_camera(Obj_snail,irandom_range(20,40));
}else{
	Spawn_off_camera(Obj_snail,irandom_range(20,40));
	Spawn_off_camera(Obj_telepig,irandom_range(10,20));
}
alarm[0] = room_speed*120;