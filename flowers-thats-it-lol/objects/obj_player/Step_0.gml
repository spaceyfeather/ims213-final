sprite_index=playerSprite();

if (canMove=true) {
if keyboard_check(ord("A"))
{
    x = x - 2;
	playerMoving=true;
	playerDirection=180;
}
if keyboard_check(ord("D"))
{
    x = x + 2;
	playerMoving=true;
	playerDirection=0;
}
if keyboard_check(ord("W"))
{
    y = y - 2;
	playerMoving=true;
	playerDirection=90;
}
if keyboard_check(ord("S"))
{
    y = y + 2;
	playerMoving=true;
	playerDirection=270;
}
}

if (canMove=false) {
	playerMoving=false;
}

if (keyboard_check_released(vk_anykey)) { //doing Any because tired
	playerMoving=false;
}


// soil stuff
var closestSoil = instance_nearest(x, y, obj_soil);
var soilDistance = distance_to_object(closestSoil);

if (soilDistance<=40) {
	playerCanWater=true;
	if (global.playerWater==0) {
	playerCanWater=false;
	} //nested so that it takes priority
}

if (playerCanWater=true) {
if (closestSoil.canWater=true) {
	if (keyboard_check_pressed(vk_space)) {
		startWaterPause=true;
		global.playerWater=global.playerWater-20;
		closestSoil.waterLevel=closestSoil.waterLevel+1;
		closestSoil.alarm[0] = (room_speed * 11);
	}
}
}

if (soilDistance<=40) {
	if (keyboard_check_pressed(vk_tab)) {
		closestSoil.flowerHarvest=true;
	} else {
		closestSoil.flowerHarvest=false;
		}
}

var waterDistance=distance_to_object(obj_water);
if (waterDistance<=40) {
	if (keyboard_check_pressed(vk_shift)) {
		startWaterPause=true;
		global.playerWater=100;
	}
}

// below makes the player stop briefly to show watering animation
if (startWaterPause=true) {
	wateringPause--;
	if (wateringPause<30) {
		canMove=false;
		playerWatering=true;
	}
	if (wateringPause<0) {
		wateringPause=30;
		canMove=true;
		playerWatering=false;
		startWaterPause=false;
	}
}


//interaction stuff
var zoruaDistance = distance_to_object(obj_zorua);
if (zoruaDistance<=40) {
	if (keyboard_check_pressed(vk_space)) {
		obj_zorua.zoruaInteract=true;
	}
}
if (obj_zorua.zoruaInteract==true) {
	canMove=false;
	if (keyboard_check_pressed(vk_shift)) {
		obj_zorua.zoruaInteract=false;
		canMove=true;
	}
}

/*
if (global.cowboyBought=true) {
	if (global.cowboyEquip=true) {
		sprite_index=spr_player_cowboy;
	}
} */
