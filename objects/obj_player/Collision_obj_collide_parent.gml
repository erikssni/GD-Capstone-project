/// @description Quick fix collider

jump = false;
speed = 0;
gravity = 0;
landing_angle = image_angle;
idle = true;
temp_angle = landing_angle;
if(temp_angle > 180){
	temp_angle = temp_angle - 360;
	image_angle = temp_angle;
} else if(temp_angle < -180){
	temp_angle = temp_angle + 360;
	image_angle = temp_angle;
} 
