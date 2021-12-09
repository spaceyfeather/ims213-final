draw_text_color(5,5,"Water: " + string(global.playerWater) + "         Flowers: " + string(global.playerFlowers), c_black, c_black, c_black, c_black, 1);

if (zoruaInteract=true) {
	draw_rectangle(0, 250, 600, 400, false);
	boxDialogue();
	draw_text_color(5, 255, string(textShow), c_black, c_black, c_black, c_black, 1);
}