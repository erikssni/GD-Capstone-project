/// @description Player variables
image_angle = 0;
spd = 0;
ang = 90;		//för jump path calc
grav = 0.25;
/*
	MEMO
	med max jump power (10) klarar man av att hoppa 205 pixlar rakt uppåt
	(gravity 0.25)
*/

//Variabler för rotationen i luften
rot_spd = 0;
rot_add = 0.5;
rot_spd_cap = 6;

jump = false;

scale = 1;

landing_angle = 0;
temp_angle = 0;

xpos = x;
ypos = y;