/// @description Insert description here
// You can write your code in this editor
A = keyboard_check(ord("A"));
D = keyboard_check(ord("D"));
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
//space = keyboard_check_pressed(vk_space);
space_down = keyboard_check(vk_space);
space_released = keyboard_check_released(vk_space);

if(jump){
	gravity = grav;
	sprite_index = spr_pogo;
	idle = false;
	idle_anim_spd = 0;
	if(scale < 2){
		scale = 0.7;
	}
	
}

//Rotation på "marken"
if( (A||left) && image_angle <= 30){
	image_angle += 1;
	ang += 1;
}
if( (D||right) && image_angle >= -30){
	image_angle -= 1;
	ang -= 1;
}
//Rotation i luften
if((A||left) && jump && air_rotate){
	if(rot_spd < rot_spd_cap){
		rot_spd += rot_add;
	}
	image_angle += rot_spd;

}
if((D||right) && jump && air_rotate){
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
		air_rotate = true;
		audio_stop_sound(sound_charge);
		audio_play_sound(sound_jump, 1, false);
		
	}
	//Ökar kraften då space hålls inne
	if(space_down){
		if(spd < 10){
			spd += spd_scale;
		}
		sprite_index = spr_pogo_anim;
		image_index = spd;
		xpos = x;
		ypos = y;
		global.x_reset_pos = x;
		global.y_reset_pos = y;
		idle = false;
	}
	if(idle){
		jump = true;
		speed = idle_spd;
		direction = 90 + image_angle;
		sprite_index = spr_pogo_anim;
		if(idle_anim_spd < idle_spd){
			idle_anim_spd += 0.5;
		}
		image_index = idle_anim_spd;
		air_rotate = false;
		audio_play_sound(sound_jump_low, 1, false);
	}
	global.shake = false;
	
}

if (keyboard_check(ord("R"))) {
	room_restart();
}

//sätter spelaren tillbaks hoppets startpunkt ifall man inte landar rätt
if(temp_angle < -31 || temp_angle > 31){
	audio_play_sound(sound_hurt, 1, false);
	//global.shake = true;
	obj_game.alarm[0] = 1 * room_speed;
	instance_destroy(obj_player);
	
	/*x = xpos;
	y = ypos;
	image_angle = 0;
	spd = 0;
	ang = 90;
	landing_angle = 0;
	temp_angle = 0;
	audio_play_sound(sound_hurt, 1, false);
	global.shake = true;*/
}


//custom out of bounds
if( y >= room_height + sprite_height || y <= 0-sprite_height){
	audio_play_sound(sound_hurt, 1, false);
	//global.shake = true;
	obj_game.alarm[1] = 1 * room_speed;
	instance_destroy(obj_player);
}
if( x >= room_width - sprite_width || x <= 0 - sprite_width){    
	audio_play_sound(sound_hurt, 1, false);
	//global.shake = true;
	obj_game.alarm[1] = 1 * room_speed;
	instance_destroy(obj_player);
}

		