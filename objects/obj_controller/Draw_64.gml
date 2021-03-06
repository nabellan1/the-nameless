/// @description Draw general GUI
//set gui dimensions
display_set_gui_size(1280, 720);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fnt_default);
draw_set_color(c_white);

var midX = display_get_gui_width() / 2;
var midY = display_get_gui_height() /2;
var right = display_get_gui_width();
var bottom = display_get_gui_height();

//win/lose messages
var loseLines =["Hah! The puny human has fallen! Bring in the next one...",
				"So soon?! We just shipped that one in",
				"Pathetic... when will we get some real entertainment",
				"Humans have such fragile bodies...",
				"*Sigh* another clean up in the arena please",
				"You'd think humans would provide more than seven seconds of fun",
				"It seems humans will always be inferior...",
				"These humans are so funny to think they stood a chance!",
				"And this is the part where we tell you to try again"];

var winLines = ["Oooh, this one seems entertaining",
				"Someone tell me what village this one came from because we need more of them!",
				"This one's a fighter! Bring in the next group",
				"Haha yes! Keep struggling with all you've got",
				"An unexpected victory... seems we'll need to make it harder",
				"Rally the warriors! We've got a new victor on our hands.",
				 "I suppose this is where we congratulate you or something."];

var bothLines = ["Dying AFTER all the action?! Truly an imbecile",
				 "What a sad, sad ending for our brave hero"];
var spikeLines = ["They stepped on a spike... didn't they"];
	
var xPadding = 150;
var yPosition = 150;

if (room != rm_menu) { //do not draw on menu (menu draw handled in menuController)
	//win/lose conditions
	draw_set_font(fnt_progressionMessage);
	if (dead and !room_complete) { //if player does not exist (was killed)
		if (!messagePicked) {
			message = irandom(array_length_1d(loseLines) - 1);
			messagePicked = true;
		}
		draw_text_ext(midX, yPosition, loseLines[message] + "\n(Press SPACE to restart)", -1, display_get_gui_width() - xPadding);
		//restart level
		if (keyboard_check_pressed(vk_space)) {
			room_restart();
		}
	}
	else if (room_complete and !dead) { //if every enemy is dead
		if (!messagePicked) {
			message = irandom(array_length_1d(winLines) - 1);
			messagePicked = true;
		}
		//go to next level
		if(room != rm_levelB){
			draw_text_ext(midX, yPosition, winLines[message] + "\n(Press SPACE to continue)", -1, display_get_gui_width() - xPadding);
			}else{draw_text_ext(midX, yPosition, "Fine. Take your victories and go" + "\n(Press SPACE to continue)", -1, display_get_gui_width() - xPadding); }
		
		
		if (keyboard_check_pressed(vk_space)) {
		
			room_goto_next();
			}
		
	}
	else if (room_complete and dead) {
		//if player dies after winning the level
		if (!staleMate) {
			message = bothLines[irandom(array_length_1d(bothLines) - 1)];
			if (instance_exists(fl_spike) and fl_spike.alarm[0] != -1) {
				message = spikeLines[irandom(array_length_1d(spikeLines) - 1)];
			}
			staleMate = true;
		}
		draw_text_ext(midX, yPosition, message + "\n(Press SPACE to restart)", -1, display_get_gui_width() - xPadding);
		//restart level
		if (keyboard_check_pressed(vk_space)) {
			room_restart();
		}
	}

	if (instance_exists(obj_player)) {
		//potion inventory and timers
		draw_set_font(fnt_potionGUIText);
		draw_set_color(potionGUICircle);
		var potCenterX = right - 100; //center for pot gui X
	 	var potCenterY = bottom - 100; //center for pot gui Y
		var aboveActive = potCenterY - 70;
		var underActive = potCenterY + 50;
		var underSpread = 55;
		var textDistance = 25; //distance
		var mainCircleSize = 50; //active potion circle
		var subCircleSize = 35; //potion sub circle
	
		//background circles
		draw_circle(potCenterX, potCenterY, mainCircleSize, false); //center
		draw_circle(potCenterX, aboveActive, subCircleSize, false); //top-mid
		draw_circle(potCenterX - underSpread, underActive, subCircleSize, false); //bot-left
		draw_circle(potCenterX + underSpread, underActive, subCircleSize, false); //bot-right
		//active potion
		draw_sprite(spr_potionGUI, obj_player.activePotion, potCenterX, potCenterY);
		//potion type sprites
		draw_sprite(spr_potion, 0, potCenterX, aboveActive); //top-mid
		draw_sprite(spr_potion, 2, potCenterX - underSpread, underActive); //bot-left
		draw_sprite(spr_potion, 1, potCenterX + underSpread, underActive); //bot-right
		//potion numbers and hot keys
		draw_set_color(c_white);
		draw_text(potCenterX, aboveActive + textDistance, string(obj_player.hp_pot)); //health (top-mid)
		draw_text(potCenterX, aboveActive - textDistance, "Z")
		draw_text(potCenterX - underSpread, underActive + textDistance, string(obj_player.dm_pot)); //damage (bot-left)
		draw_text(potCenterX - underSpread, underActive - textDistance, "X");
		draw_text(potCenterX + underSpread, underActive + textDistance, string(obj_player.sp_pot)); //speed (bot-right)
		draw_text(potCenterX + underSpread, underActive - textDistance, "C");
		//active potion timer
		if (obj_player.potTimer > 9) {
			draw_text(potCenterX, potCenterY + 40, "00:" + string(obj_player.potTimer));
		}
		else {
			draw_text(potCenterX, potCenterY + 40, "00:0" + string(obj_player.potTimer));
		}
	}
}
draw_set_font(fnt_default);



