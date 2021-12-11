function doorDialogue(){

	textShow="";
	delayOn=false;

	if (doorIndex=0) {
		textShow=".....you have made it.\n..........are you ready?\n(1) yes\n(2) no";
		if (keyboard_check_pressed(ord(1))) {
			doorIndex=1;
			menuDelay();
		}
		if (keyboard_check_pressed(ord(2))) {
			doorIndex=2;
		}
	}
	
	if (doorIndex=1) {
		textShow=".......your action has no consequence.\n........your life will continue.\n(1) okay.\n(2) ...";
		if (delayOn=false) {
			if (keyboard_check_pressed(ord(1))) {
				doorIndex=3;
				menuDelay();
			}
		}
		if (keyboard_check_pressed(ord(2))) {
			doorIndex=2;
		}
	}
	
	if (doorIndex=2) {
		textShow="......that is alright.\n\n........you may stay a while longer.";
		if (keyboard_check_pressed(ord(0))) {
			doorIndex=0;
		}
	}
	if (doorIndex=3) {
		textShow="........goodbye.\n\n(1) goodbye";
		if (delayOn=false) {
			if (keyboard_check_pressed(ord(1))) {
				global.doorInteract=false;
				playerIsReady=true;
			}
		}
	}
	

}