/// @description Insert description here
// You can write your code in this editor
A = keyboard_check(ord("A"));
D = keyboard_check(ord("D"));
//space = keyboard_check_pressed(vk_space);
space_down = keyboard_check(vk_space);
space_released = keyboard_check_released(vk_space);

if(jump){
	gravity = grav;
	if(scale < 2){
		scale = 0.7;
	}
}

//Rotation på "marken"
if(A && image_angle <= 30){
	image_angle += 1;
	ang += 1;
}
if(D && image_angle >= -30){
	image_angle -= 1;
	ang -= 1;
}
//Rotation i luften
/*if(A && jump){
	image_angle += 5;
	//ang +=5

}
if(D && jump){
	image_angle -= 5;
	//ang -=5;
}*/

show_debug_message(ang)
show_debug_message(spd)
if(!jump){
	if(space_released){
		jump = true;
		direction = ang;
		speed = spd;
		spd = 0;
	}
	if(space_down){
		if(spd < 10){
			spd += 0.2;
		}
		
	}
	
}


if (keyboard_check(ord("R"))) {
	game_restart();
}
