/// Player movement
// set player move vars to +1 for right or up and -1 for left or down wasd keys
var xMove = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var yMove = keyboard_check(ord("S")) - keyboard_check(ord("W"));

// set sprite animation for up and down movement
if (xMove != 0 || yMove != 0)
{
	sprite_index = sPlayerRun_strip7;
} else {
	sprite_index = sPlayerIdle_strip4;
}

// reverse sprite for left movement.  Setting image direction var based on movement var 1 or -1
if (xMove != 0) image_xscale = xMove;

// applying the movement vars to the actual character using the built in x and y variables times the speed var
x += xMove * spd;
y += yMove * spd;

// when cooldown reaches 0 player can shoot
coolDown--;

if (coolDown <= 0 && mouse_check_button(mb_left)) {
	// reset cooldown value
	coolDown = coolDownValue;
	// play the bullet sound
	audio_play_sound(aBullet, 1, false);
	// creating bullet object in new layer called bullets
	with (instance_create_layer(x, y, "bullets", oBullet)) {
		// set direction of bullet to same direction of gun
		direction = oGun.image_angle;
		// bullet speed from bullet creation variable so that we can modify for different bullets
		speed = oBullet.bulletSpeed;
	}
}
