if(point_in_circle(obj_player.x, obj_player.y, x, y, 50)){
	if(keyboard_check_pressed(vk_space)){
		inDialogue = !inDialogue;
	}
}
else{
	inDialogue = false;
}