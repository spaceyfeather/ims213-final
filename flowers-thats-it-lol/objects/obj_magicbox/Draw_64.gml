draw_text_color(25,25,"Water: " + string(global.playerWater) + "         Flowers: " + string(global.playerFlowers), c_black, c_black, c_black, c_black, 1);

if (boxInteract=true) {
	draw_rectangle(160, 475, 840, 700, false);
	boxDialogue();
	draw_text_color(165, 480, string(textShow), c_black, c_black, c_black, c_black, 1);
}