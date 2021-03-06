/// @desc Follow player
if (instance_exists(obj_player)) {
	x = obj_player.x;
	y = obj_player.y;
}
//camera moves to random enemies once killed
else {	
	if (!alarmInit) {
		alarm[0] = room_speed * 3;
		alarmInit = true;
	}
	if (instance_exists(enemyFollow)) {
		x = enemyFollow.x;
		y = enemyFollow.y;
	}
}
x = clamp(x, viewWidth / 2, room_width - viewWidth / 2); 
//conditional clamp used for exit room
if (room = rm_exit) {
	if (instance_exists(obj_exitController)) {
		if (!obj_exitController.gateDown) {
			//SPECIAL CLAMP FOR EXIT ROOM OPEN DOOR EFFECT
			y = clamp(y, 0, 1152 - viewHeight / 2);
		}
		else {
			y = clamp(y, viewHeight / 2, room_width - viewHeight / 2); 
		}
	}
}
else {
	y = clamp(y, viewHeight / 2, room_width - viewHeight / 2); 
}

//set camera with new coordinates
var viewMatrix = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(playerCamera, viewMatrix);
