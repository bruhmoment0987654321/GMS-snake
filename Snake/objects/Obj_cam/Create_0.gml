enum CamMode{
	follow_mouse_peek
}
global.cx = 0;
global.cy = 0;

global.view_w = camera_get_view_width(view_camera[0]);
global.view_h = camera_get_view_height(view_camera[0]);
follow = Obj_snake;
mode = CamMode.follow_mouse_peek;
lerpamount = 0.1;