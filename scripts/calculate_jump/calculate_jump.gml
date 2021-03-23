///calculate_jump(x,speed,angle,startx,starty,gravity)
function calculate_jump(argument0, argument1, argument2, argument3, argument4, argument5){
	var xx = argument0;
	var spd = argument1;
	var ang = degtorad(argument2);
	var x0 = argument3;
	var y0 = argument4;
	var gr = argument5;
	
	
	/*
	Quick maths:
	
	a = acceleration
	v = velocity
	a(y) = -g --> vy(t) = -g * t + vy0 --> y(t) = (-g/2) * t^2 + vy0 * t + y0
	a(x) = 0 --> vx --> vx0 --> x(t) = vx0 * t + x0
	
	vx0 == speed * cos(angle)
	vy0 == speed * sin(angle)
	
	t = ( (x - x0 ) / (speed * cons(angle))
	y(x) = -(g/2) * ( (x - xx0)^2 / (spd^2 * cos^2(angle)) ) + tan(angle) * ( x - x0) +y0
	
	*/
	
	var posY = 0;
	if(cos(ang) != 0 && spd != 0){
		posY = -(gr/2) * ( power(xx-x0,2) / power(spd,2) * power(cos(ang),2) ) + tan(ang) * (xx-x0) + y0;
	} else {
		posY = 0;
	}
	return posY;	
	
}

