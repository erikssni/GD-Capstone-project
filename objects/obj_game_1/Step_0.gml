 /// @description 

//Timer
//delta time i sekunder
seconds += delta_time/1000000;

if(global.shake){
	var range = random_range(-1, 1);
	camera_set_view_angle(view_camera[0], range);
} else {
	camera_set_view_angle(view_camera[0], 0);
}