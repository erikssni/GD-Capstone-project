/// @description Insert description here
// You can write your code in this editor
A = keyboard_check(ord("A"));
D = keyboard_check(ord("D"));
space = keyboard_check_pressed(vk_space);

if(jump){
	gravity = grav;
	if(scale < 2){
		scale = 0.7;
	}
}
if(A && image_angle <= 30){
	image_angle += 1;
	ang += 1;
}
if(D && image_angle >= -30){
	image_angle -= 1;
	ang -= 1;
}

show_debug_message(ang)
if(!jump){
	if(space){
		jump = true;
		direction = ang;
		speed = spd;	
	}
}
/*if (place_meeting(x+spd, y, obj_collide)) {
	
	jump = false;
}*/

