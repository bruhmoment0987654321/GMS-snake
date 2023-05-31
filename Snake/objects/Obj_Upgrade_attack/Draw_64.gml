draw_self();
if(rectangle_in_rectangle(x,y,x+sprite_width,y+sprite_height,device_mouse_x_to_gui(0)-5, device_mouse_y_to_gui(0)-5, device_mouse_x_to_gui(0)+ 5, device_mouse_y_to_gui(0) + 5) == 2){
	switch(global.upgradeAttack){
		case 0: what_to_say = "This will upgrade the amount of\nclicks it'll take to kill."; break;
		case 1: what_to_say = "This will upgrade more to the\namount of clicks it'll take"; break;
		case 2: what_to_say = "This will upgrade the amount of\nclicks it'll take and will give\nyour arrow a fire effect"; break;
		case 3: what_to_say = ""; break;
	}
	draw_text(1110,y+sprite_height/2,what_to_say);	
}