draw_set_color(c_black);

draw_text(view_wport[0]/2, view_hport[0]*0.05, "Time: " 
	+ level_time);

hiscores = [];
//hämtar rätt hiscores tabell
switch(room){
	case rm_level1:
		hiscores = lvl1_hiscores;
		draw_text(view_wport[0]*0.1, view_hport[0]*0.05, "Death count: " 
		+ string(global.deathcount1));
	break;
	
	case rm_level2:
		hiscores = lvl2_hiscores;
		draw_text(view_wport[0]*0.1, view_hport[0]*0.05, "Death count: " 
		+ string(global.deathcount2));
	break;
	
	case rm_city:
		hiscores = lvl3_hiscores;
		draw_text(view_wport[0]*0.1, view_hport[0]*0.05, "Death count: " 
		+ string(global.deathcount3));
	break;
	
	case rm_lair:
		hiscores = lvl4_hiscores;
		draw_text(view_wport[0]*0.1, view_hport[0]*0.05, "Death count: " 
		+ string(global.deathcount4));
	break;
}

if(array_index ==  array_length(hiscores)){
	draw_text(view_wport[0]*0.8, view_hport[0]*0.05, "Time to beat: #" 
	+string(array_index)+" "+ hiscores[array_index-1]);
}
else if(level_time >= hiscores[array_index-1]){
	draw_text(view_wport[0]*0.8, view_hport[0]*0.05, "Time to beat: #" 
	+string(array_index)+ " "+hiscores[array_index]);	
	array_index++;
} else {
	draw_text(view_wport[0]*0.8, view_hport[0]*0.05, "Time to beat: #" 
	+string(array_index)+ " "+hiscores[array_index-1]);	
}


	

		
