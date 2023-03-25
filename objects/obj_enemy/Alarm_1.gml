/// @desc Death
global.enemies -= 1;
if (enemyType == "devil"){
	global.red -= 1;
}
if (enemyType == "snake"){
	global.blue -= 1;
}
if (enemyType == "golem"){
	global.yellow -= 1;
}
if (enemyType == "slime"){
	global.green -= 1;
}
instance_destroy();	
