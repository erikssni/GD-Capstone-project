/// @description Insert description here
// You can write your code in this editor
seconds = 0;
global.time_lvl_1 = "";
global.time_lvl_2 = "";
global.time_lvl_3 = "";
global.time_lvl_4 = "";

level_time = "";

//Hiscore
array_index = 1;
// ska vara i formatet min:s.millis (xx:yy.zz) för att fungera
lvl1_hiscores = ["00:38.00", "00:44.12", "00:52.70", "01:04.22", "06:42.00"];
lvl2_hiscores = ["00:50.24", "00:55.36", "01:17.12", "02:08.00", "03:45.06"];
lvl3_hiscores = ["0:3.00", "0:6.00", "0:7.00", "0:8.00"];
lvl4_hiscores = ["0:2.00", "0:3.00", "0:5.00", "0:7.00"];


global.shake = false;

pstartx = 224;		//start positionen för spelaren
pstarty = 1568;
//instance_create_layer(pstartx, pstarty, "Instances", obj_player);
global.x_reset_pos = 0; 
global.y_reset_pos = 0;
