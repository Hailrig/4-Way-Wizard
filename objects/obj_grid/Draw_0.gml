/// @desc Draw the gridlines

if (drawGrid == true){
	for (var i = 0; i < gridWidth; i++){
		for (var j = 0; j < gridHeight; j++){
			if (gridArray[i,j] == 1){
				draw_sprite_ext(spr_grid, 0, x + (i*32), y + (j*32), 1, 1, 0, c_white, alpha);
			}
		}
	}
}