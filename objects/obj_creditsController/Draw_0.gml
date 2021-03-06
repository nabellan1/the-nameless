/// @description Draw scrolling credits
var na = "Noel Abellanosa\n";
var ms = "Michael Shalapskiy\n";
var se = "Silas Edrington\n";
var me = "Mateo Echeverry\n";
var sp = 400;
var sp2 = 100;

draw_set_halign(fa_center);
draw_set_valign(fa_top)
draw_set_font(fnt_title);
draw_set_color(c_white);
draw_set_alpha(1);

//title
draw_text(x,y,"The Nameless");
//Team
draw_set_font(fnt_creditsHeader);
draw_text(x,y+sp,"MadDrunk Games 2020");
draw_set_font(fnt_credits);
draw_text(x,y+sp+sp2,na+ms+se+me);
//Project lead
draw_set_font(fnt_creditsHeader);
draw_text(x,y+sp*2,"Producer");
draw_set_font(fnt_credits);
draw_text(x,y+sp*2+sp2,ms);
//Designers
draw_set_font(fnt_creditsHeader);
draw_text(x,y+sp*3,"Game Design");
draw_set_font(fnt_credits);
draw_text(x,y+sp*3+sp2,na+ms+se+me);
//Programmers
draw_set_font(fnt_creditsHeader);
draw_text(x,y+sp*4,"Programming");
draw_set_font(fnt_credits);
draw_text(x,y+sp*4+sp2,na+ms+se+me);
//Artists
draw_set_font(fnt_creditsHeader);
draw_text(x,y+sp*5,"Art");
draw_set_font(fnt_credits);
draw_text(x,y+sp*5+sp2,na+ms);
//Font designers
draw_set_font(fnt_creditsHeader);
draw_text(x,y+sp*6,"Fonts");
draw_set_font(fnt_credits);
draw_text(x,y+sp*6+sp2,"Dark Power - FontKong");
//Composers
draw_set_font(fnt_creditsHeader);
draw_text(x,y+sp*7,"Music");
draw_set_font(fnt_credits);
draw_text(x,y+sp*7+sp2,"Atrium Carceri & Herbst9 - Hander Skola Halla Harda Yxor\n" +
					   "Paleowolf - Archaic Eon\n" +
					   "Oljus - Hraesvelgr\n" +
					   "Cryo Chamber Collaboration - Shub-Niggurath 1 Excerpt")
//Sound creators
draw_set_font(fnt_creditsHeader);
draw_text(x,y+sp*8,"Sounds");
draw_set_font(fnt_credits);
draw_text(x,y+sp*8+sp2,"PLACEHOLDER");
//Story
draw_set_font(fnt_creditsHeader);
draw_text(x,y+sp*9,"Story Concept");
draw_set_font(fnt_credits);
draw_text(x,y+sp*9+sp2, na+ms+se+me);
//Writing
draw_set_font(fnt_creditsHeader);
draw_text(x,y+sp*10,"Writing");
draw_set_font(fnt_credits);
draw_text(x,y+sp*10+sp2, na+ms+se+me);


//THANK YOU MESSAGE WITH SPRITES
var ty = sp * 12;
draw_set_font(fnt_creditsHeader);
draw_text(x,y+ty,"Thank you for playing!");
//player classes
draw_sprite(spr_warriorDown, 0, x + 5, y + ty - 50);
draw_sprite(spr_mageR, 0, x - 70, y + ty - 50);
draw_sprite(spr_bardL, 0, x + 70, y + ty - 50);
//enemies
draw_sprite(spr_kingRatR, 0, x + 5, y + ty + 130);
draw_sprite(spr_lowlyRatR, 0, x - 70, y + ty + 180);
draw_sprite(spr_lowlyRatL, 0, x + 70, y + ty + 180);

draw_sprite(spr_highRatR, 0, x - 70*2, y + ty + 160);
draw_sprite(spr_highRatWarriorL, 0, x + 70*2, y + ty + 160);

draw_sprite(spr_highRatArcherR, 0, x - 70*3, y + ty + 160);
draw_sprite(spr_highRatCrossbowmanL, 0, x + 70*3, y + ty + 160);

draw_sprite(spr_highRatShamanR, 0, x - 70*4, y + ty + 160);
draw_sprite(spr_highRatShamanL, 0, x + 70*4, y + ty + 160);

//CHECK IF AT END
if ((y + ty) <= 280) {
	if (scrollRate > originalScrollRate) {
		scrollRate = originalScrollRate;
	}
	if (scrollRate > 0) {
		scrollRate -= .1;
	}
	finished = true;
}
//DRAW CURTAINS
for (var i = 1; i < 9; i++) {
	for (var j = 0; j < 10; j++) {
		if (j == 0) {
			draw_sprite(spr_curtainsEdge, 1, leftX - (j*64), i*64);
		}
		else {
			draw_sprite(spr_curtains, 1, leftX - (j*64), i*64);
		}
	}
}
for (var i = 1; i < 9; i++) {
	for (var j = 0; j < 10; j++) {
		if (j == 0) {
			draw_sprite(spr_curtainsEdge, 0, rightX + (j*64), i*64);
		}
		else {
			draw_sprite(spr_curtains, 0, rightX + (j*64), i*64);
		}
	}
}
//IF FINISHED CLOSE CURTAINS
if (finished) {
	if (leftX + 64 <= rightX) {
		leftX += curtainRate;
		rightX -= curtainRate;
	}
	else {
		fade = true;
	}
}



