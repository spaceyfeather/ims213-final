function zoruaDialogue() {
	
	textShow="";	
	delayOn=false;

	
	if (textIndex=0) {
		textShow="Hello there.\n(1) hello\n(2) i have flowers\n(3) help";
		if (keyboard_check_pressed(ord(1))) {
			if (saidHi=false) {
				textIndex=1;
			}
			if (saidHi=true) {
				textIndex=4;
			}
			menuDelay();
		}
		if (keyboard_check_pressed(ord(2))) {
			if (saidHi=false) {
				textIndex=9;
			}
			if (saidHi=true) {
				if (global.ribbonObtained=false) {
					textIndex=2;
				}
				if (global.ribbonObtained=true) {
					textIndex=6;
				}
			}
			menuDelay();
		}
		if (keyboard_check_pressed(ord(3))) {
			textIndex=3;
		}
		
	}
	
	if (textIndex=1) {
		textShow="The name's Score. ...Aki, huh? Nice to meet you.\n(1) what have you got there?\n(0) return";
		if (keyboard_check_pressed(ord(0))) {
			textIndex=0;
		}
		if (delayOn=false) {
			if (keyboard_check_pressed(ord(1))) {
				saidHi=true;
				textIndex=5;
				menuDelay();
			}
		}
	}

	if (textIndex=2) {
		textShow="Got yourself some flowers, eh?\nI'll trade the ribbon for 7 of 'em.\n(1) here you go\n(0) return";
		if (keyboard_check_pressed(ord(0))) {
			textIndex=0;
		}
		if (delayOn=false) {
			if (keyboard_check_pressed(ord(1))) {
				if (global.playerFlowers>=7) {
					textIndex=10;
					global.ribbonObtained=true;
					global.playerFlowers=global.playerFlowers-7;
				}
				if (!global.ribbonObtained) {
					if (global.playerFlowers<7) {
						textIndex=7;
					}
				}
			}
		}
	}
	
	if (textIndex=3) {
		textShow="Press space to water flowers, and shift to refill your water.\nCertain flowers grow at certain water levels.\nHarvest fully grown flowers with shift.\nPress shift to stop talking to me.\n(Press (0) to go back to the first line of text.)";
		if (keyboard_check_pressed(ord(0))) {
			textIndex=0;
		}
	}

	
	if (textIndex=4) {
		textShow="Hi, again.";
		if (keyboard_check_pressed(ord(0))) {
			textIndex=0;
		}
	}
	
	if (textIndex=5) {
		textShow="A ribbon. Found it earlier today, in fact.\nHmm... if you could pick me some flowers, I could give you it.\nI planted them already, but I don't have a reasonable way\nto water them.\n(1) who says i'll water them?\n(0) okay!";
		if (keyboard_check_pressed(ord(0))) {
			textIndex=0;
		}
		if (delayOn=false) {
			if (keyboard_check_pressed(ord(1))) {
				textIndex=8;
			}
		}
	}
	
	if (textIndex=6) {
		textShow="Got some more, did you?\nI'll gladly take them off your hands.\n(1) here you go\n(0) return";
		if (delayOn=false) {
			if (keyboard_check_pressed(ord(1))) {
				global.playerFlowers=0;
			}
		}
		if (keyboard_check_pressed(ord(0))) {
			textIndex=0;
		}
	}
	
	if (textIndex=7) {
		textShow="...I don't see all of them, sorry.";
		if (keyboard_check_pressed(ord(0))) {
			textIndex=0;
		}
	}
	
	if (textIndex=8) {
		textShow="...a bit rude of you, but okay.";
		if (keyboard_check_pressed(ord(0))) {
			textIndex=0;
		}
	}
	
	if (textIndex=9) {
		textShow="...no greeting for a poor Zorua?";
		if (keyboard_check_pressed(ord(0))) {
			textIndex=0;
		}
	}
	
	if (textIndex=10) {
		textShow="There we go. That's a good look on you.";
		if (keyboard_check_pressed(ord(0))) {
			textIndex=0;
		}
	}



return textShow;

}