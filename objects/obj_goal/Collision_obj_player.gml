/// @description
switch(room){
	case rm_level1:
		room_goto(rm_win);
		global.time_lvl_1 = string(obj_game.seconds div 60) + ":" + string(obj_game.seconds mod 60);
	break;
	case rm_level2:
		room_goto(rm_win2);
		global.time_lvl_2 = string(obj_game.seconds div 60) + ":" + string(obj_game.seconds mod 60);
	break;
	case rm_city:
		room_goto(rm_win3);
		global.time_lvl_3 = string(obj_game.seconds div 60) + ":" + string(obj_game.seconds mod 60);
	break;
	
	case rm_lair:
		room_goto(rm_win4);
		global.time_lvl_4 = string(obj_game.seconds div 60) + ":" + string(obj_game.seconds mod 60);
	break;

}
