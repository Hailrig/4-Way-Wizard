/// @desc ??
if (collision_point(x, y, obj_player, 0, 0)){
	global.casting = false;
	instance_destroy();
}
var enemy = collision_point(x, y, obj_enemy, 0, 0)
if (enemy){
	if (sprite_index == spr_spell_red and enemy.enemyType == "devil"){
		enemy.die();
	} else if (sprite_index == spr_spell_green and enemy.enemyType == "slime"){
		enemy.die();
	} else if (sprite_index == spr_spell_blue and enemy.enemyType == "snake"){
		enemy.die();
	} else if (sprite_index == spr_spell_yellow and enemy.enemyType == "golem"){
		enemy.die();
	} else if (sprite_index == spr_spell_purple and enemy.enemyType == "wizard"){
		enemy.die()
	} else {
		audio_play_sound(snd_fail, 1, 0);
		global.casting = false;
		instance_destroy();
	}
}

if (collision_point(x, y, obj_wall, 0, 0) and ding == false){
	ding = true;
	audio_play_sound(snd_ding, 1, 0);
}