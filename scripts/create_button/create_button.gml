/// create_button(x, y, width, height, text, script)
function create_button(argument0, argument1, argument2, argument3, argument4, argument5, argument6){
	var _x = argument0;
	var _y = argument1;
	var _width = argument2;
	var _height = argument3;
	var _text = argument4;
	var _script = argument5;
	var _value = argument6;
	
	//skapa knappen
	var _button = instance_create_layer(_x, _y, "Instances", obj_button);
	
	//sätt värden
	with(_button){
		width = _width;
		height = _height;
		text = _text;
		script = _script;
		button_value = _value;
	}
	
	return _button;
}