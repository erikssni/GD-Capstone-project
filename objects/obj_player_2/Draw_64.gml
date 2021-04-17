/// @description Calculate jump path, work in progress
/*if(space_down){
	for(var i=0; i<32; i++) {
		var X = i*16;
	
		if(ang > 270){
			ang = ang;
		} else {
			if(ang > 90){
				X = -X;
			}else {
				if(ang > 180){
					X = -X;
				}
			}
		}
	
		var Y = calculate_jump(X, spd, ang, 0, 0, grav);
		draw_set_color(c_red);
		
		draw_sprite_ext(spr_jump_path, 0, x+X, (y-500)-Y, 1*(scale/(i+1)), 1*(scale/(i+1)), 0, c_white, 1);	
		/*show_debug_message(x);
		show_debug_message(Y);*/
	/*}
}*/