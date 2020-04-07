/// @desc Destroy and follow

//destroy when animation finishes
if(image_index == image_number - 1) {
	instance_destroy();
}

//follow player position
if (instance_exists(following)) { //prevents crashes where player dies before sword swing finishes
	x = following.x;
	y = following.y;
}