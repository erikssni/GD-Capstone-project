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
if(A && jump){
	if(rot_spd < rot_spd_cap){
		rot_spd += rot_add;
	}
	image_angle += rot_spd;

}
if(D && jump){
	//image_angle -= 5;
	if(rot_spd < rot_spd_cap){
		rot_spd += rot_add;
	}
	image_angle -= rot_spd;
}

if(!jump){
	
	if(space_released){
		jump = true;
		ang = 90+image_angle;
		direction = ang;
		speed = spd;
		spd = 0;
		rot_spd = 0;
	}
	//Ökar kraften då space hålls inne
	if(space_down){
		if(spd < 10){
			spd += 0.2;
		}
		xpos = x;
		ypos = y;	
	}
	
}

if (keyboard_check(ord("R"))) {
	game_restart();
}

//sätter spelaren tillbaks hoppets startpunkt ifall man inte landar rätt
if(temp_angle < -31 || temp_angle > 31){
	x = xpos;
	y = ypos;
	image_angle = 0;
	spd = 0;
	ang = 90;
	landing_angle = 0;
	temp_angle = 0;
}
