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
lvl1_hiscores = ["00:31.90", "00:40.12", "00:52.70", "01:04.22", "01:17.12", "02:05.00", "03:42.16", "06:42.00", "08:21.54", "12:43.21"];
lvl2_hiscores = ["00:50.24", "00:55.36", "01:17.12", "02:08.00", "03:45.06", "06:52.21", "08:25.53", "12:45.10", "13:04.12", "14:11.11"];
lvl3_hiscores = ["01:33.37", "01:52.22", "02:07.01", "02:40.21", "05:45.32", "07:35.59", "08:45.11", "09:50.10", "10:15.51", "15:01.16"];
lvl4_hiscores = ["05:10.55", "06:15.22", "06:06.66", "09:50.10", "10:13.33", "15:07.01", "20:02.50", "21:10.22", "25:42.42", "30:21.20"];


global.shake = false;

pstartx = 224;		//start positionen för spelaren
pstarty = 1568;
//instance_create_layer(pstartx, pstarty, "Instances", obj_player);
global.x_reset_pos = 0; 
global.y_reset_pos = 0;

global.deathcount1 = 0;
global.deathcount2 = 0;
global.deathcount3 = 0;
global.deathcount4 = 0;