/// @description 

// menu system = https://youtu.be/jsWPUuwB1RQ

switch(room){
	case rm_win:
		if(keyboard_check_pressed(vk_enter)){
			room_goto(rm_mvp);
		}
	break;
	
	case rm_menu:
		var _w = 200;
		var _h = 80;

		create_button(view_wport[0]/2 - _w/2, view_hport[0]*1/3, _w, _h, "Play", btn_click, 1);
		create_button(view_wport[0]/2 - _w/2, view_hport[0]*1/3 + _h + 10, _w, _h, "Levels", btn_click, 2);
		create_button(view_wport[0]/2 - _w/2, view_hport[0]*1/3 + (_h + 10) *2 , _w, _h, "Controls", btn_click, 4);
		create_button(view_wport[0]/2 - _w/2, view_hport[0]*1/3 + (_h + 10) *3 , _w, _h, "Exit", btn_click, 3);
		break;
	
}
