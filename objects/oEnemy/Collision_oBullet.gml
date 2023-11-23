/// what happens when a bullet hits an enemy

// dead variable is set in create event of the enemy
if (!dead) {
	// play sound for hit enemies that aren't yet dead
	audio_play_sound(aDeath, 1, false);
	// set the enemy to dead now
	dead = true;
	// move enemy to layer that is behind everything named bodies
	layer = layer_get_id("bodies");
	// now destroy the bullet using keyword other which references the item that is colliding with this current
	// oEnemy object.  so the oBullet in the collision here
	instance_destroy(other);
}





