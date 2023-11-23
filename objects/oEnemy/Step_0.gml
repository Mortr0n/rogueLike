/// Enemy Movement to follow player
if (dead) {
	sprite_index = sEnemyDead;
	speed = 0;
} else {
	// point enemy towards player
	direction = point_direction(x, y, oPlayer.x, oPlayer.y);
	speed = random_range(.5, 1.5);

	// change direction of sprite based on direction that enemy is pointing.
	if (direction > 90 && direction < 270) {
		image_xscale = -1;
	} else {
		image_xscale = 1;
	}
}


