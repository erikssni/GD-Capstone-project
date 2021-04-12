/// @description 
dark_green = make_color_rgb(6,77,10);
light_green = make_color_rgb(61,171,29);
draw_set_color(merge_color(dark_green, light_green, hover));

draw_roundrect(x,y, x+width, y+height, 0);

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x+width/2, y+height/2, text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_color(c_white);