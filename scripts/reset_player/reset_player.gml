// Reset player position
function reset_player(){
	audio_play_sound(sound_hurt, 1, false);
	obj_game.alarm[0] = 1 * room_speed;
	instance_destroy(obj_player);
	
	switch(room){
		case rm_level1:
			global.deathcount1++;
		break;
		case rm_level2:
			global.deathcount2++;
		break;
		case rm_city:
			global.deathcount3++;
		break;
		case rm_lair:
			global.deathcount4++;
		break;
	}
}