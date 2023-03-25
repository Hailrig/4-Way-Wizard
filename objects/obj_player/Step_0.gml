/// @desc ??

left = keyboard_check(ord("A")) or keyboard_check(vk_left);
pressLeft = keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left);
right = keyboard_check(ord("D")) or keyboard_check(vk_right);
pressRight = keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right);
up = keyboard_check(ord("W")) or keyboard_check(vk_up);
pressUp = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up);
down = keyboard_check(ord("S")) or keyboard_check(vk_down);
pressDown = keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down);

if (right == 1 and canMove == true and left == 0 and alive == true){
	var colID = collision_point(x + 32, y, obj_enemy, 0, 0);
	if (colID){
		if (colID.enemyType == "slime" or (global.purple == true and colID.enemyType == "wizard")){
			colID.die();
			x += 32;
			audio_play_sound(snd_step, 1, 0);
			moved = true;
			sprite_index = spr_player_flipped;
			var spell = instance_create_depth(x+32, y, 0, obj_spell);
			if (global.purple == true){
				spell.sprite_index = spr_spell_purple;
			} else {
				spell.sprite_index = spr_spell_green;
			}
			spell.image_index = 1;
		} else {
			die();
		}
	} else if (!collision_point(x + 32, y, obj_wall, 0, 0)){
		x += 32;
		audio_play_sound(snd_step, 1, 0);
		moved = true;
		sprite_index = spr_player_flipped;
		var spell = instance_create_depth(x+32, y, 0, obj_spell);
		if (global.purple == true){
			spell.sprite_index = spr_spell_purple;
		} else {
			spell.sprite_index = spr_spell_green;
		}
		spell.image_index = 1;
	}
}

if (left == 1 and canMove == true and right == 0 and alive == true){
	var colID = collision_point(x - 32, y, obj_enemy, 0, 0);
	if (colID){
		if (colID.enemyType == "devil" or (global.purple == true and colID.enemyType == "wizard")){
			colID.die();
			x -= 32;
			audio_play_sound(snd_step, 1, 0);
			moved = true;
			sprite_index = spr_player;
			var spell = instance_create_depth(x-32, y, 0, obj_spell);
			if (global.purple == true){
				spell.sprite_index = spr_spell_purple;
			} else {
				spell.sprite_index = spr_spell_red;
			}
			spell.image_index = 1;
		} else {
			die();
		}
	} else if (!collision_point(x - 32, y, obj_wall, 0, 0)){
		x -= 32;
		audio_play_sound(snd_step, 1, 0);
		moved = true;
		sprite_index = spr_player;
		var spell = instance_create_depth(x-32, y, 0, obj_spell);
		if (global.purple == true){
			spell.sprite_index = spr_spell_purple;
		} else {
			spell.sprite_index = spr_spell_red;
		}
		spell.image_index = 1;
	}
}

if (up == 1 and canMove == true and down == 0 and alive == true){
	var colID = collision_point(x, y-32, obj_enemy, 0, 0)
	if (colID){
		if (colID.enemyType == "snake" or (global.purple == true and colID.enemyType == "wizard")){
			colID.die();
			y -= 32;
			audio_play_sound(snd_step, 1, 0);
			moved = true;
			var spell = instance_create_depth(x, y-32, 0, obj_spell);
			if (global.purple == true){
				spell.sprite_index = spr_spell_purple;
			} else {
				spell.sprite_index = spr_spell_blue;
			}
			spell.image_index = 1;
		} else {
			die();
		}
	} else if (!collision_point(x, y-32, obj_wall, 0, 0)){
		y -= 32;
		audio_play_sound(snd_step, 1, 0);
		moved = true;
		var spell = instance_create_depth(x, y-32, 0, obj_spell);
		if (global.purple == true){
			spell.sprite_index = spr_spell_purple;
		} else {
			spell.sprite_index = spr_spell_blue;
		}
		spell.image_index = 1;
	}
}

if (down == 1 and canMove == true and up == 0 and alive == true){
	colID = collision_point(x, y+32, obj_enemy, 0, 0);
	if (colID){
		if (colID.enemyType == "golem" or (global.purple == true and colID.enemyType == "wizard")){
			colID.die();
			y += 32;
			audio_play_sound(snd_step, 1, 0);
			moved = true;
			var spell = instance_create_depth(x, y+32, 0, obj_spell);
			if (global.purple == true){
				spell.sprite_index = spr_spell_purple;
			} else {
				spell.sprite_index = spr_spell_yellow;
			}
			spell.image_index = 1;
		} else {
			die();
		}
	} else if (!collision_point(x, y+32, obj_wall, 0, 0)){
		y += 32;
		audio_play_sound(snd_step, 1, 0);
		moved = true;
		var spell = instance_create_depth(x, y+32, 0, obj_spell);
		if (global.purple == true){
			spell.sprite_index = spr_spell_purple;
		} else {
			spell.sprite_index = spr_spell_yellow;
		}
		spell.image_index = 1;
	}
}

if (moved == true){
	moved = false;
	canMove = false;
	alarm[0] = 10;
}

if (pressLeft and alive == true){
	var spell = instance_create_depth(x-32, y, -1, obj_spell);
	if (global.purple == true){
		spell.sprite_index = spr_spell_purple;
	} else {
		spell.sprite_index = spr_spell_red;
	}
	spell.image_index = 0;
}

if (pressRight and alive == true){
	var spell = instance_create_depth(x+32, y, -1, obj_spell);
	if (global.purple == true){
		spell.sprite_index = spr_spell_purple;
	} else {
		spell.sprite_index = spr_spell_green;
	}
	spell.image_index = 0;
}

if (pressUp and alive == true){
	var spell = instance_create_depth(x, y-32, -1, obj_spell);
	if (global.purple == true){
		spell.sprite_index = spr_spell_purple;
	} else {
		spell.sprite_index = spr_spell_blue;
	}
	spell.image_index = 0;
}

if (pressDown and alive == true){
	var spell = instance_create_depth(x, y+32, -1, obj_spell);
	if (global.purple == true){
		spell.sprite_index = spr_spell_purple;
	} else {
		spell.sprite_index = spr_spell_yellow;
	}
	spell.image_index = 0;
}


function die(){
	if (alive == true){
		alive = false;
		visible = false;
		audio_play_sound(snd_death_wizard, 1, 0);
		alarm_set(1, 30);
	}
}