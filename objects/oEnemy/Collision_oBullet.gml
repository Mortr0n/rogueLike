/// what happens when a bullet hits an enemy
var _killEnemy = function()
{
	instance_destroy();
}




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
	//time_source_start(_timeToDestroy)
	// Start the time source
    if (_timeToDestroy != -1) { // Check if _timeToDestroy has been initialized
        time_source_start(_timeToDestroy);
    }
}






