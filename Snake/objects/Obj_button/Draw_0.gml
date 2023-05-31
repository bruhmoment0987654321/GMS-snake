if(rectangle_in_rectangle(x-sprite_width/2,y-sprite_height/4,x+sprite_width/2,y+sprite_height/4,mouse_x,mouse_y,mouse_x,mouse_y) == 2){
	image_blend = c_gray;
}else{
	image_blend = c_white;	
}
draw_self();
draw_set_font(Ft_pixel_font);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_color(c_black);
draw_text(x,y,what_to_say);