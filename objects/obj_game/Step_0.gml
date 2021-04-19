/// @description 

//Timer
//delta time i sekunder
seconds += delta_time/1000000;
minutes = "";
display_seconds = "";
/*if((seconds mod 60) < 10 ){
	level_time = string(seconds div 60) + ":0" + string(seconds mod 60);
} else if(seconds div 60 < 10){
	level_time = "0"+string(seconds div 60) + ":0" + string(seconds mod 60);
}else {
	level_time = string(seconds div 60) + ":" + string(seconds mod 60);
}*/

if(seconds div 60 < 10){
	minutes = "0"+string(seconds div 60);
} else {
	minutes = +string(seconds div 60);
}

if((seconds mod 60) < 10 ){
	display_seconds = "0" + string(seconds mod 60);
} else {
	display_seconds = string(seconds mod 60);
}

level_time = minutes +":" +display_seconds;
//resetar rummet om de tar över en timme...
if((seconds div 60) >= 60){
	room_restart();
}

if(global.shake){
	var range = random_range(-1, 1);
	camera_set_view_angle(view_camera[0], range);
} else {
	camera_set_view_angle(view_camera[0], 0);
}

