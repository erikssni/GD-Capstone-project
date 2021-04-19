 /// @description 

// menu system = https://youtu.be/jsWPUuwB1RQ

switch(room){
	//winning screens
	case rm_win:
		if(keyboard_check_pressed(vk_enter)){
			room_goto(rm_level2);
		}
		if(keyboard_check_pressed(vk_escape)){
			room_goto(rm_menu);
		}
	break;
	
	case rm_win2:
		if(keyboard_check_pressed(vk_enter)){
			room_goto(rm_city);
		}
		if(keyboard_check_pressed(vk_escape)){
			room_goto(rm_menu);
		}
	break;
	
	case rm_win3:
		if(keyboard_check_pressed(vk_enter)){
			room_goto(rm_lair);
		}
		if(keyboard_check_pressed(vk_escape)){
			room_goto(rm_menu);
		}
	break;
	
	case rm_win4:
		if(keyboard_check_pressed(vk_escape)){
			room_goto(rm_menu);
		}
	break;
	
	case rm_menu:
		var _w = 200;
		var _h = 80;

		create_button(view_wport[0]/2 - _w/2, view_hport[0]*1/3, _w, _h, "Play", btn_click, 1);
		create_button(view_wport[0]/2 - _w/2, view_hport[0]*1/3 + _h + 10, _w, _h, "Levels", btn_click, 2);
		//create_button(view_wport[0]/2 - _w/2, view_hport[0]*1/3 + (_h + 10) *2 , _w, _h, "Controls", btn_click, 4);
		create_button(view_wport[0]/2 - _w/2, view_hport[0]*1/3 + (_h + 10) *2 , _w, _h, "Exit", btn_click, 3);
		break;
		
	case rm_info:
		if (keyboard_check_pressed(vk_enter)){
			room_goto(rm_level1);
		}
	break;
	
	case rm_level_select:
		var _w = 200;
		var _h = 80;

		create_button(view_wport[0]/2 - _w/2, view_hport[0]*1/3, _w, _h, "Level 1", btn_click, 11);
		create_button(view_wport[0]/2 - _w/2, view_hport[0]*1/3 + _h + 10, _w, _h, "Level 2", btn_click, 12);
		create_button(view_wport[0]/2 - _w/2, view_hport[0]*1/3 + (_h + 10) *2 , _w, _h, "Level 3", btn_click, 13);
		create_button(view_wport[0]/2 - _w/2, view_hport[0]*1/3 + (_h + 10) *3 , _w, _h, "Level 4", btn_click, 14);
		
}
