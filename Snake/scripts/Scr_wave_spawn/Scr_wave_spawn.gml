// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wave_spawn(_wave_type){
	if(_wave_type == "pig"){
		var repet = irandom_range(10,25);
		repeat(repet){
		
				instance_create_layer(0,0,"Telepig",Obj_telepig,{
				x : floor(random_range(20,room_width-10)),
				y : floor(random_range(20,room_height-10))
				});
			}

		show_message(string(repet));
	}
	if(_wave_type == "big snail"){
		repeat(3){
			var xx = irandom_range(-200,200);
			var yy = irandom_range(-200,200);
			instance_create_layer(room_width/2+xx,room_height/2+yy,"Enemy",Obj_big_snail);
		}
		show_message("They're here. Run");
	}
}
