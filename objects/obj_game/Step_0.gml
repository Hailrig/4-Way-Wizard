/// @desc General game functionality
if (global.enemies == 0 and changing == false and room != rm_level_ten){
	changing = true;
	audio_play_sound(snd_end, 1, 0);
	alarm_set(0, 30);
} else if (global.enemies == 0 and changing == false){
	changing = true;
	ending = true;
	audio_play_sound(snd_winner, 1, 0);
	alarm_set(0, 200);
}

if (keyboard_check(vk_escape)){
	game_end();
}