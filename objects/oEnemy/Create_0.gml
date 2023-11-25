///

dead = false

_delayInSeconds = 1
_delayInSteps = _delayInSeconds;
_timeToDestroy = -1

var myFunction = function() {
	alarm[1] = 1
}


_timeToDestroy = time_source_create(time_source_game, 3, time_source_units_seconds, myFunction, [], -1, time_source_expire_after );



if oGame.enemyCount < 10 {
	alarm[0] = _delayInSteps
}



