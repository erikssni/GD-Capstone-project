/// @description
switch(room){
	case rm_mvp:
		room_goto(rm_win);
		global.finaltime = string(obj_game.seconds div 60) + ":" + string(obj_game.seconds mod 60);
	break;
	
	case rm_lair:
		room_goto(rm_win);
		global.time_lvl_4 = string(obj_game.seconds div 60) + ":" + string(obj_game.seconds mod 60);
	break;

}
