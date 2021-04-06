/// @description Player variables
image_angle = 0;
spd = 0;
ang = 90;		//för jump path calc
grav = 0.25;
spd_scale = 0.5;
/*
	MEMO
	med max jump power (10) klarar man av att hoppa 205 pixlar rakt uppåt
	(gravity 0.25)
*/

//Variabler för rotationen i luften
rot_spd = 0;
rot_add = 0.5;
rot_spd_cap = 6;
air_rotate = false;


jump = false;
idle = true;
idle_spd = 3;
idle_anim_spd = 0;

scale = 1;

landing_angle = 0;
temp_angle = 0;

xpos = x;
ypos = y;

alarm[0] = -1;