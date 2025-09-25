var onGroundNow = place_meeting(x,y+1,oGround)
// --- draw the player normally
draw_self();

// --- only show the gun while in the air
if (!onGroundNow) {
	gun_frame += 0.2; // controls animation speed
    if (gun_frame >= sprite_get_number(sGun)) {
        gun_frame = 0; // loop back
    }
	
    if (xsp < 0) {
        // jumping left → flip gun
        draw_sprite_ext(sGun, floor(gun_frame), x - 22, y - 30, -1, 1, 0, c_white, 1);
    } else {
        // jumping right or default
        draw_sprite(sGun, floor(gun_frame), x - 10, y - 30);
    }
}
