///

dead = false


var _delayInSeconds = 1;
var _delayInSteps = _delayInSeconds * 60;

if (!is_array(oGame.enemies))
{
	oGame.enemies = [];
}

if array_length(oGame.enemies) < 10 {
	alarm[0] = _delayInSteps
}
