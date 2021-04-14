
function btn_click(){
	switch(button_value){
		case 1:
			room_goto(rm_info);
			break;
		
		case 2:
			show_message("More levels coming soon..");
			break;
		
		case 3:
			game_end();
			break;
		
		case 4:
			show_message("A/D or ARROW KEYS - rotate"
				+"\n Hold SPACE - jump power"
				+"\n Release SPACE - jump")
			break;
		
		// LEVELS
		case 11:
			room_goto(rm_mvp);
			break;
		case 12:
			//room_goto(rm_mvp);
			show_message("Coming soon..");
			break;
		case 13:
			//room_goto(rm_mvp);
			show_message("Coming soon..");
			break;
		case 14:
			//room_goto(rm_mvp);
			show_message("Coming soon..");
			break;
		
	}
}