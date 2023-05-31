randomize();
cursor_sprite = Spr_arrow;
window_set_cursor(cr_none);
score = 0;
game_over = false;
max_xp = 500;
movesp = 2;


instance_create_layer(1275,150,"Snake",Obj_Upgrade_attack,{
	image_xscale : 0.75,
	image_yscale : 0.75
})

instance_create_layer(1275,350,"Snake",Obj_Upgrade_speed,{
	image_xscale : 0.75,
	image_yscale : 0.75
})

instance_create_layer(1275,550,"Snake",Obj_Upgrade_time,{
	image_xscale : 0.75,
	image_yscale : 0.75
})

wave1Spawned = false;