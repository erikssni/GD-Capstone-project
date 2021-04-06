/// @description Player reset
instance_create_layer(global.x_reset_pos, global.y_reset_pos, "Instances", obj_player); 
obj_player.image_angle = 0;
obj_player.spd = 0;
obj_player.ang = 90;
obj_player.landing_angle = 0;
obj_player.temp_angle = 0;
