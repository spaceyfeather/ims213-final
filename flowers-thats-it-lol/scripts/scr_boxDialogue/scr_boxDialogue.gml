function boxDialogue() {
	
	textShow="";	
	delayOn=false;

	
	if (textIndex=0) {
		textShow="this is the first part of the menu.\npress (1) to buy hats.\npress (2) to equip hats.";
		if (keyboard_check_pressed(ord(1))) {
			textIndex=1;
			menuDelay();
		}
		if (keyboard_check_pressed(ord(2))) {
			textIndex=2;
			menuDelay();
		}
		if (keyboard_check_pressed(ord(3))) {
			textIndex=3;
		}
		
	}
	
	if (textIndex=1) {
		textShow="this is the second screen\npress (1) to buy cowboy hat.\npress (0) to return.";
		if (keyboard_check_pressed(ord(0))) {
			textIndex=0;
		}
		if (delayOn=false) {
			if (keyboard_check_pressed(ord(1))) {
				if (global.playerFlowers>=3) {
					global.cowboyBought=true;
					global.playerFlowers=global.playerFlowers-3;
					show_debug_message("bought cowboy!");
				}
			}
		}
	}

	if (textIndex=2) {
		textShow="this is the third screen.\npress (1) to equip cowboy hat if bought.\npress (0) to return.";
		if (keyboard_check_pressed(ord(0))) {
			textIndex=0;
		}
		if (keyboard_check_pressed(ord(1))) {
			global.cowboyEquip=true;
			show_debug_message("equipped cowboy!");
		}
	}
	
	if (textIndex-3) {
		textShow="help screen\nexplanation soon";
		if (keyboard_check_pressed(ord(0))) {
			textIndex=0;
		}
	}

	





return textShow;

}