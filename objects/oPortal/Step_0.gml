if(room==Hub){
	if(place_meeting(x, y, oPlayer)){
		room_goto(Level_2)
	}
}

if(room==Level_2){
	if(place_meeting(x, y, oPlayer)){
		room_goto(Hub)
	}
}