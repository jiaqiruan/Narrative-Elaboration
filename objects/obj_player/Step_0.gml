/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(keyboard_check(ord("A"))){
	sprite_index = spr_walking_hor;
	image_xscale = 1;
	MoveX(-walk_speed);
}
if(keyboard_check(ord("D"))){
	sprite_index = spr_walking_hor;
	image_xscale = -1;
	MoveX(walk_speed);
}
if(keyboard_check(ord("W"))){
	sprite_index = spr_walking_up;
	MoveY(-walk_speed);
}
if(keyboard_check(ord("S"))){
	sprite_index = spr_walking_down;
	MoveY(walk_speed);
}
if(!keyboard_check(ord("A"))&&!keyboard_check(ord("W"))&&!keyboard_check(ord("S"))&&!keyboard_check(ord("D"))){
	image_speed = 0;
}else{
	image_speed = 1;
}

camera_set_view_pos(view_camera[0],x-camera_get_view_width(view_camera[0])/2,y-camera_get_view_height(view_camera[0])/2);