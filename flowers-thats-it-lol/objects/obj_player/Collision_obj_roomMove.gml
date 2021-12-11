if (room=room_main) {
	room_goto(room_exit);
	x=200;
	y=100;
}
if (room=room_exit) {
	room_goto(room_main);
	x=200;
	y=200;
}

show_debug_message("room change!");