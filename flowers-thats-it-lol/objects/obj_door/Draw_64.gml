if (global.doorInteract=true) {
	draw_rectangle(0, 250, 600, 400, false);
	if (global.ribbonObtained=false) {
		draw_text_color(5, 255, "......\n\n...........\n\n........you are not ready.", c_black, c_black, c_black, c_black, 1);
	}
	if (global.ribbonObtained=true) {
		doorDialogue();
		draw_text_color(5, 255, string(textShow), c_black, c_black, c_black, c_black, 1);
	}
}