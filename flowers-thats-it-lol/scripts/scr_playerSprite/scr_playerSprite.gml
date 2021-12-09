function playerSprite(){
// this would probably be better NOT being a million if statements,
// but if statements are all i know how to do :)
if (global.ribbonObtained=false) {
	if (playerMoving=false) {
		if (playerDirection=270) {
			sprite_index=aki_front_idle;
		}
		if (playerDirection=180) {
			sprite_index=aki_left_idle;
		}
		if (playerDirection=0) {
			sprite_index=aki_right_idle;
		}
		if (playerDirection=90) {
			sprite_index=aki_back_idle;
		}
	}
	if (playerWatering=true) {
		if (playerDirection=270) {
			sprite_index=aki_front_water;
		}
		if (playerDirection=180) {
			sprite_index=aki_left_water;
		}
		if (playerDirection=0) {
			sprite_index=aki_right_water;
		}
		if (playerDirection=90) {
			sprite_index=aki_back_idle;
		}
	}
	if (playerMoving=true) {
		if (playerDirection=270) {
			sprite_index=aki_front_walk;
		}
		if (playerDirection=180) {
			sprite_index=aki_left_walk;
		}
		if (playerDirection=0) {
			sprite_index=aki_right_walk;
		}
		if (playerDirection=90) {
			sprite_index=aki_back_walk;
		}
	}
}

if (global.ribbonObtained=true) {
	if (playerMoving=false) {
		if (playerDirection=270) {
			sprite_index=akis_front_idle;
		}
		if (playerDirection=180) {
			sprite_index=akis_left_idle;
		}
		if (playerDirection=0) {
			sprite_index=akis_right_idle;
		}
		if (playerDirection=90) {
			sprite_index=akis_back_idle;
		}
	}
	if (playerWatering=true) {
		if (playerDirection=270) {
			sprite_index=akis_front_water;
		}
		if (playerDirection=180) {
			sprite_index=akis_left_water;
		}
		if (playerDirection=0) {
			sprite_index=akis_right_water;
		}
		if (playerDirection=90) {
			sprite_index=akis_back_idle;
		}
	}
	if (playerMoving=true) {
		if (playerDirection=270) {
			sprite_index=akis_front_walk;
		}
		if (playerDirection=180) {
			sprite_index=akis_left_walk;
		}
		if (playerDirection=0) {
			sprite_index=akis_right_walk;
		}
		if (playerDirection=90) {
			sprite_index=akis_back_walk;
		}
	}
}
return sprite_index;
}