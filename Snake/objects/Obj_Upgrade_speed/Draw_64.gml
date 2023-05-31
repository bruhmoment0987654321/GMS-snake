draw_self();
if(rectangle_in_rectangle(x,y,x+sprite_width,y+sprite_height,device_mouse_x_to_gui(0)-5, device_mouse_y_to_gui(0)-5, device_mouse_x_to_gui(0)+ 5, device_mouse_y_to_gui(0) + 5) == 2){
	switch(global.upgradeSpeed){
		case 0: what_to_say = "This will upgrade your speed.\nUnfortuantly, it makes you longer"; break;
		case 1: what_to_say = "This will upgrade more of your\nspeed and length"; break;
		case 2: what_to_say = "This will upgrade your\nspeed and length. It'll also give you\na chance to spark electricity"; break;
		case 3: what_to_say = ""; break;
	}
	draw_text(1100,y+sprite_height/2,what_to_say);	
}