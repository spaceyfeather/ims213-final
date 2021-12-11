if (mySoil.waterLevel=1) {
	canGrow=true;
} else {
	canGrow=false;
}

if (canGrow=true) {
	growthTimer++;
	if (growthTimer==1) {
		show_debug_message("flower 3");
	}
	if (growthTimer==420) {
		growthLevel=growthLevel+1;
		growthTimer=0;
	}
}

if (growthLevel=1) {
	image_index=1;
}
if (growthLevel=2) {
	image_index=2;
}

if (growthLevel==3) {
	image_index=myColor;
	canGrow=false;
	growthTimer=0;
	canHarvest=true;
} else {
	canHarvest=false;
}

if (canHarvest=true) {
	if (mySoil.flowerHarvest=true) {
		global.playerFlowers=global.playerFlowers+1;
		growthLevel=1;
	}
}
