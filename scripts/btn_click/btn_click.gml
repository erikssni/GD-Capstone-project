
function btn_click(){
	switch(button_value){
		case 1:
			room_goto(rm_mvp);
			break;
		
		case 2:
			show_message("More levels coming soon..");
			break;
		
		case 3:
			game_end();
			break;
	}
}