ysp+=0.1
xsp=0

if keyboard_check(vk_left){
	xsp= -4
}

if keyboard_check(vk_right){
	xsp= +4
}

if place_meeting(x, y+1, oGround){
	ysp=0
	if keyboard_check(vk_up)
	{
		ysp= -4
	}
}

move_and_collide(xsp, ysp, oGround)