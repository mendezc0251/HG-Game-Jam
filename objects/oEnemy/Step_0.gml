if place_meeting(x, y+1, oGround)
{
	hspeed = 1 * facing;
}

if place_meeting(x + 8, y-4, oGround)
{
	facing *= - 1
	hspeed = 0.25 + (1 * facing)
	image_xscale = (facing == 1) ? 1 : -1;
}

if place_meeting(x,y,oBullet)
{
	instance_destroy();
}
