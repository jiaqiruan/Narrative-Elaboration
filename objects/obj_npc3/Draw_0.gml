if(point_in_circle(obj_player.x, obj_player.y, x, y, 50)){
	if(inDialogue){
		draw_sprite(spr_box,0,x,y-125);

		draw_set_color(c_black);
		draw_set_font(Font1);
	
		draw_text_ext(x+5,y-125,firstText,sep,width);
	}
}


draw_self();