/// @desc ??
if (collision_point(x, y, obj_player, 0, 0)){
	global.purple = true;	
	audio_play_sound(snd_wand, 1, 0);
	instance_destroy();
}