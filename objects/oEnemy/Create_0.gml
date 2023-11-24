///

dead = false

_delayInSeconds = 1
_delayInSteps = _delayInSeconds;
var myFunction = function() {
	alarm[0] = 1
}


var _timeToDestroy = time_source_create(time_source_game, 1, time_source_units_seconds, myFunction, [], -1, time_source_expire_after );



if oGame.enemyCount < 10 {
	alarm[0] = _delayInSteps
}



