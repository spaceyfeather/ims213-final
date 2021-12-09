function menuDelay(){
	delayOn=true;
	delayTimer=0;
	delayTimer++;
	if (delayTimer>=30) {
		delayOn=false;
		delayTimer=0;
	}
	
show_debug_message(delayOn);
return delayOn;
}