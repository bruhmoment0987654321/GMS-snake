cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);

switch(mode){
	case CamMode.follow_mouse_peek:
	if(!instance_exists(follow)) break;
	cx = lerp(follow.x,mouse_x,lerpamount) - (view_w/2);
	cy = lerp(follow.y,mouse_y,lerpamount) - (view_h/2);
	
	break;
}

cx = clamp(cx,0,room_width-view_w);
cy = clamp(cy,0,room_height-view_h);
camera_set_view_pos(view_camera[0],cx,cy);