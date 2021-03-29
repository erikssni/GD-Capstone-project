draw_set_color(c_black);
draw_text(20, 20, "Angle: " + string(obj_player.image_angle));
draw_text(20, 50, "Custom angle: " + string(obj_player.ang));
draw_text(20, 80, "Landing angle: " + string(obj_player.landing_angle));
draw_text(20, 110, "Speed: " + string(obj_player.spd));

draw_text(view_wport[0]/2, view_hport[0]*0.05, "Time: " 
	+ string(seconds div 60) + ":" + string(seconds mod 60));
	

		
