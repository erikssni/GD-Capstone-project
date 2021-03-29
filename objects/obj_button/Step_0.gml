/// @description 
var hoverE = button_hover();
var click = hoverE && mouse_check_button_pressed(mb_left);

// hover effect
hover = lerp(hover, hoverE, 0.1);
y = lerp(y, ystart - hoverE *5, 0.1);

//Click
if(click && script >= 0){
	script_execute(script);
}
