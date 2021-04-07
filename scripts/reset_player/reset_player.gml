// Reset player position
function reset_player(){
	audio_play_sound(sound_hurt, 1, false);
	obj_game.alarm[0] = 1 * room_speed;
	instance_destroy(obj_player);
}