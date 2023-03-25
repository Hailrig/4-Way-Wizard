/// @desc roomchange
changing = false;
if (room == rm_level_one){
	room_goto(rm_level_two);
}
if (room == rm_level_two){
	room_goto(rm_level_three);
}
if (room == rm_level_three){
	room_goto(rm_level_four);
}
if (room == rm_level_four){
	room_goto(rm_level_five);
}
if (room == rm_level_five){
	room_goto(rm_level_six);
}
if (room == rm_level_six){
	room_goto(rm_level_seven);
}
if (room == rm_level_seven){
	room_goto(rm_level_eight);
}
if (room == rm_level_eight){
	room_goto(rm_level_nine);
}
if (room == rm_level_nine){
	room_goto(rm_level_ten);
}
if (room == rm_level_ten){
	game_end();
}