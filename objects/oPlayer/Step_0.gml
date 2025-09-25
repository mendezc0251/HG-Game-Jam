var jumpKeyPressed = keyboard_check_pressed(vk_space);
var jumpKeyHold = keyboard_check(vk_space);
var onGroundNow = place_meeting(x,y+1,oGround)

//sound code
if(jumpKeyPressed){
audio_play_sound(snd_JumpLeave,1,false)
}
if(onGroundNow && !onGroundPrev){
audio_play_sound(snd_JumpLand,1,false)
}
onGroundPrev = onGroundNow;
//sprite code


if(!onGroundNow){
	//Player in air
	if (xsp < 0) {
        if (sprite_index != sPlayerJumpLeft) {
            sprite_index = sPlayerJumpLeft;
            image_index = 0;
            image_speed = 1;
        }
    } else {
        if (sprite_index != sPlayerJump) {
            sprite_index = sPlayerJump;
            image_index = 0;
            image_speed = 1;
        }
    }
} else {
	if(keyboard_check(vk_left)){
		sprite_index=sPlayerLeft}
	else if (keyboard_check(vk_right)){
		sprite_index=sPlayerRight
	} else {
		sprite_index=sPlayerIdle
	}
}



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
