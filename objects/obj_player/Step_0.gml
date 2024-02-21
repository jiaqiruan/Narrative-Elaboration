/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
/*if(keyboard_check(ord("A"))){
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


if(keyboard_check_pressed(vk_space)){
	falling = true;
	fall_speed = -20;
}


if(falling){
	sprite_index = spr_jumping;
	fall_speed+=fall_acc;
}

MoveY(fall_speed);
*/

//Moving and jumping
var xinput = 0; var yinput = 0;
if (keyboard_check(ord("A"))) {
	if(m_grounded){
		image_xscale = 1;
	}
	xinput -= 1;	
}
if (keyboard_check(ord("D"))) {
	if(m_grounded){
		image_xscale = -1;
	}
	xinput += 1;	
}
if (keyboard_check_pressed(vk_space)) {
	yinput += 1;
}
//dealing with sprites
if(!m_grounded){
	sprite_index = spr_jumping;
} 
else {
	sprite_index = spr_walking_hor;
} 



var vaccel = 0; var haccel = 0;
//if player on the ground, enable jumping
if (yinput == 1 && m_grounded) {
	vaccel += -m_jumpPower;
	m_grounded = false;
}

//calculate vertical and horizontal acceleration
vaccel += m_grav;
haccel += xinput * m_xspeed;
if (xinput == 0&&m_grounded) {
	haccel += m_hdrag * -m_hvel;
}

m_vvel += vaccel;
m_hvel += haccel;

m_vvel = clamp(m_vvel, -m_maxYspeed, m_maxYspeed);
m_hvel = clamp(m_hvel, -m_maxXspeed, m_maxXspeed);
//actually moving the player
var xCol = MoveX(m_hvel);
var yCol = MoveY(m_vvel);

//instead of bouncing, when I land I zero the velocity and set grounded to true
if (yCol && m_vvel != 0) {
	m_grounded = true;
	m_vvel = 0;
}

if (xCol && m_hvel > 0) {
	m_hvel = 0;
}



if(!keyboard_check(ord("A"))&&!keyboard_check(ord("W"))&&!keyboard_check(ord("S"))&&!keyboard_check(ord("D"))){
	image_speed = 0;
}else{
	image_speed = 1;
}

camera_set_view_pos(view_camera[0],x-camera_get_view_width(view_camera[0])/2,y-camera_get_view_height(view_camera[0])/2);