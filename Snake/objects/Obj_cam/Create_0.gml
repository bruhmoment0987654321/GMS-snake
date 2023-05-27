enum CamMode{
	follow_mouse_peek
}

view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);
follow = Obj_snake;
mode = CamMode.follow_mouse_peek;
yoffset = 150;
lerpamount = 0.1;