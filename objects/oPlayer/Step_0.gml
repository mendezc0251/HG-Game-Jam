xsp = keyboard_check(vk_right) - keyboard_check(vk_left);
xsp *= move_speed;

if (place_meeting(x, y+2, oGround))
{
	ysp = 0;
	
	if (!place_meeting(x+xsp, y+2, oGround) && place_meeting(x+xsp, y+10, oGround))
	{
		ysp = abs(xsp);
		xsp = 0;
	}
	if (keyboard_check(vk_space)) ysp = -jump_speed;
}
else if (ysp < 10) ysp += 1

move_and_collide(xsp, ysp, oGround, 4, 0, 0, move_speed, -1)
