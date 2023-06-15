image_angle += spin_speed*(global.time_slowed);
if(health_ < 0){
	sprite_index = Spr_spikeman_dead;	
}
if(place_meeting(x,y,Obj_snakespark)){
	health_ -= 0.3;
	with(other){
		instance_destroy();	
	}
}