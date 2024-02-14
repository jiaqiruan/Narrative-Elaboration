/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(global.key&&point_in_circle(obj_player.x,obj_player.y,x,y,50)){
	audio_play_sound(door,10,false);
	instance_destroy(self);
}