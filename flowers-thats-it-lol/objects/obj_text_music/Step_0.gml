if (room==room_exit) {
	audio_sound_gain(mus_whisker, 0, 500);
	//audio_pause_sound(mus_whisker);
}
if (room==room_main) {
	audio_sound_gain(mus_whisker, 1, 500);
}
if (room==room_end) {
	if (textAlpha<1) {
	textAlpha=textAlpha+0.01;
	}
}