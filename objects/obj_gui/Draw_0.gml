/// @description Text
switch(room){
	case rm_win:
		draw_set_font(fnt_text)
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_text(room_width/2, room_height * 1/3, 
			@"Level completed!" +
"\nFinal time: " + string(global.finaltime) +
"\n\nThank you for playing the MVP, more levels coming soon."+
"\n\n Do you want to play again?" +
"\n Press ENTER to restart"	);

			draw_set_halign(fa_left);
		break;
		
	case rm_menu:
		draw_set_font(fnt_text_large);
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_text(room_width/2, room_height * 1/4, "Pogo Rise");
		draw_set_font(fnt_text_small);
		draw_text(room_width * 0.05, room_height *0.95, "Version: MVP");
		draw_set_font(fnt_text);

}
