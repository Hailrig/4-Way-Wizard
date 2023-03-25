/// @desc Create grid

drawGrid = true;
alpha = 0.8;

gridArray[0,0] = 0;
for (var i = 0; i < gridWidth; i++){
	for (var j = 0; j < gridHeight; j++){
		if (!collision_point(x + (i*32), y + (j*32), obj_wall, 0, 0,)){
			gridArray[i, j] = 1;
		} else {
			gridArray[i, j] = 0;
		}
	}
}