/// @desc ??
if (enemyType == "devil"){
	sprite_index = spr_devil;
	mainSprite = spr_devil;
	flipSprite = spr_devil_flipped;
	deadSprite = 0;
	weakFace = "west";
	deathSound = snd_death_devil;
} else if (enemyType == "slime"){
	sprite_index = spr_slime;
	mainSprite = spr_slime;
	flipSprite = spr_slime;
	deadSprite = 1;
	weakFace = "east";
	deathSound = snd_death_slime
} else if (enemyType == "golem"){
	sprite_index = spr_golem;
	mainSprite = spr_golem;
	flipSprite = spr_golem;
	deadSprite = 3;
	weakFace = "south";
	deathSound = snd_death_golem
} else if (enemyType == "snake"){
	sprite_index = spr_snake;
	mainSprite = spr_snake;
	flipSprite = spr_snake;
	deadSprite = 2;
	weakFace = "north";
	deathSound = snd_death_snake;
} else if (enemyType == "wizard"){
	sprite_index = spr_wizard;
	mainSprite = spr_wizard;
	flipSprite = spr_dragon_flipped;
	weakFace = "south";
	deathSound = snd_death_dragon;
}
warning = false;
canMove = false;
alive = true;
alarm_set(0, 30)