global.cx = camera_get_view_x(view_camera[0]);
global.cy = camera_get_view_y(view_camera[0]);

switch(mode){
	case CamMode.follow_mouse_peek:
	if(!instance_exists(follow)) break;
	global.cx = lerp(follow.x,mouse_x,lerpamount) - (global.view_w/2);
	global.cy = lerp(follow.y,mouse_y,lerpamount) - (global.view_h/2);
	break;
}

global.cx = clamp(global.cx,0,room_width-global.view_w);
global.cy = clamp(global.cy,0,room_height-global.view_h);
camera_set_view_pos(view_camera[0],global.cx,global.cy);