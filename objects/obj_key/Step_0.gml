/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(place_meeting(x,y,obj_player)){
	global.key = true;
	audio_play_sound(key,10,false);
	instance_destroy(self);
}