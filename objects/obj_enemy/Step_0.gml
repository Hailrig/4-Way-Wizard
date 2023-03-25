/// @desc ??

if (canMove == true && (mType == "straight" || mType == "curve") && alive == true){
	if (dir == "east" && canMove == true){
		var colID = collision_point(x + 32, y, obj_player, 0, 0);
		if (colID){
			if (enemyType != "devil" and enemyType != "wizard"){
				colID.die();
			} else if (warning == false) {
				warning = true;
				canMove = false;
				alarm_set(0, 30);
				if (enemyType == "wizard"){
					arrow = instance_create_depth(x + 64, y+16, 0, obj_arrow);
				} else {
					arrow = instance_create_depth(x + 32, y, 0, obj_arrow);
				}
				arrow.image_index = 1;
			} else {
				colID.die();
			}
		} else if (collision_point(x + 32, y, obj_wall, 0, 0) or (collision_point(x + 64, y, obj_wall, 0, 0) and enemyType == "wizard")){
			bounce();
			if (mType == "straight"){
				canMove = false;
				alarm_set(0, 30);
				if (enemyType == "wizard"){
					arrow = instance_create_depth(x - 32, y+16, 0, obj_arrow);
				} else {
					arrow = instance_create_depth(x-32, y, 0, obj_arrow);
				}
				arrow.image_index = 2;
			}
			if (mType == "curve"){
				canMove = false;
				alarm_set(0, 30);
				arrow = instance_create_depth(x, y-32, 0, obj_arrow);
				arrow.image_index = 0;
			}
		} else {
			sprite_index = flipSprite;
			x += 32;
			canMove = false;
			alarm_set(0, 30);
			if (enemyType == "wizard"){
				arrow = instance_create_depth(x + 64, y+16, 0, obj_arrow);
			} else {
				arrow = instance_create_depth(x + 32, y, 0, obj_arrow);
			}
			arrow.image_index = 1;
		}
	}
	if (dir == "west" && canMove == true){
		var colID = collision_point(x - 32, y, obj_player, 0, 0);
		if (colID){
			if (enemyType !=  "slime" and enemyType != "wizard"){
				colID.die();
			} else if (warning == false) {
				warning = true;
				canMove = false;
				alarm_set(0, 30);
				if (enemyType == "wizard"){
					arrow = instance_create_depth(x - 32, y+16, 0, obj_arrow);
				} else {
					arrow = instance_create_depth(x-32, y, 0, obj_arrow);
				}
				arrow.image_index = 2;
			} else {
				colID.die();
			}
		} else if (collision_point(x - 32, y, obj_wall, 0, 0)){
			bounce();
			if (mType == "straight"){
				canMove = false;
				alarm_set(0, 30);
				if (enemyType == "wizard"){
					arrow = instance_create_depth(x + 64, y+16, 0, obj_arrow);
				} else {
					arrow = instance_create_depth(x+32, y, 0, obj_arrow);
				}
				arrow.image_index = 1;
			}
			if (mType == "curve"){
				canMove = false;
				alarm_set(0, 30);
				arrow = instance_create_depth(x, y + 32, 0, obj_arrow)
				arrow.image_index = 3;
			}
		} else {
			sprite_index = mainSprite;
			x -= 32;
			canMove = false;
			alarm_set(0, 30);
			if (enemyType == "wizard"){
				arrow = instance_create_depth(x - 32, y+16, 0, obj_arrow);
			} else {
				arrow = instance_create_depth(x-32, y, 0, obj_arrow);
			}
			arrow.image_index = 2;
		}
	}
	if (dir == "north" && canMove == true){
		var colID = collision_point(x, y-32, obj_player, 0, 0);
		if (colID){
			if (enemyType != "golem"){
				colID.die();
			} else if (warning == false) {
				warning = true;
				canMove = false;
				alarm_set(0, 30);
				arrow = instance_create_depth(x, y-32, 0, obj_arrow);
				arrow.image_index = 0;
			} else {
				colID.die();
			}
		} else if (collision_point(x, y-32, obj_wall, 0, 0)){
			bounce();
			if (mType == "straight"){
				canMove = false;
				alarm_set(0, 30);
				arrow = instance_create_depth(x, y+32, 0, obj_arrow);
				arrow.image_index = 3;
			}
			if (mType == "curve"){
				canMove = false;
				alarm_set(0, 30);
				arrow = instance_create_depth(x-32, y, 0, obj_arrow);
				arrow.image_index = 2;
			}
		} else {
			y -= 32;
			canMove = false;
			alarm_set(0, 30);
			arrow = instance_create_depth(x, y-32, 0, obj_arrow);
			arrow.image_index = 0;
		}
	}
	if (dir == "south" && canMove == true){
		var colID = collision_point(x, y+32, obj_player, 0, 0);
		if (colID){
			if (enemyType != "snake"){
				colID.die();
			} else if (warning == false) {
				warning = true;
				canMove = false;
				alarm_set(0, 30);
				arrow = instance_create_depth(x, y + 32, 0, obj_arrow)
				arrow.image_index = 3;
			} else {
				colID.die();
			}
		} else if (collision_point(x, y+32, obj_wall, 0, 0)){
			bounce();
			if (mType == "straight"){
				canMove = false;
				alarm_set(0, 30);
				arrow = instance_create_depth(x, y-32, 0, obj_arrow);
				arrow.image_index = 0;
			}
			if (mType == "curve"){
				canMove = false;
				alarm_set(0, 30);
				arrow = instance_create_depth(x + 32, y, 0, obj_arrow)
				arrow.image_index = 1;
			}
		} else {
			y += 32;
			canMove = false;
			alarm_set(0, 30);
			arrow = instance_create_depth(x, y + 32, 0, obj_arrow);
			arrow.image_index = 3;
		}
	}
}

function bounce(){
	if (mType == "straight"){
		if (dir == "east"){
			dir = "west";
		} else if (dir == "west"){
			dir = "east";
		} else if (dir == "north"){
			dir = "south";
		} else if (dir == "south"){
			dir = "north";
		}
	} else {
		if (dir == "east"){
			dir = "north";
		} else if (dir == "west"){
			dir = "south";
		} else if (dir == "north"){
			dir = "west";
		} else if (dir == "south"){
			dir = "east";
		}
	}
}

function die(){
	if (alive == true){
		alive = false;
		sprite_index = spr_dead;
		if (enemyType == "wizard"){
			sprite_index = spr_dragon_death;
		} else {
			image_index = deadSprite;
		}
		audio_play_sound(deathSound, 1, 0);
		try{
			if (mType != "stationary"){
				instance_destroy(arrow.id);
			}
		}
		alarm_set(1, 30);
	}
}