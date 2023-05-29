randomize();
window_set_cursor(cr_none);
score = 0;
game_over = false;

global.upgradeTime = 0;
global.upgradeAttack = 0;
global.upgradeSpeed = 0;
global.upgradeSpeedAmount = 0;
global.upgradeTimeAmount = 0;
global.upgradeAttackAmount = 0;
global.xp = 0;
global.skill_point = 0;
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