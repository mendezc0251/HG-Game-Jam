var jumpKeyPressed = keyboard_check_pressed(vk_space);
var jumpKeyHold = keyboard_check(vk_space);

xsp = (keyboard_check(vk_right) - keyboard_check(vk_left)) * move_speed; 
ysp += grav;

if place_meeting(x, y+1, oGround)
{
	jumpCount = 0;
}
else
{
	if jumpCount == 0
	{
		jumpCount = 1;
	}
}

if jumpKeyPressed && jumpCount < jumpMax
{
	jumpCount++;
	
	jumpTimer = jumpHoldFrames;
}

if !jumpKeyHold { jumpTimer = 0; }

if jumpTimer > 0
{
	ysp = jump_speed;
	
	jumpTimer--;
}

if place_meeting(x + xsp, y, oGround)
{
	xsp = 0;
}

if place_meeting(x + xsp, y + ysp, oGround)
{
	ysp = 0;
}

x += xsp;
y += ysp;
