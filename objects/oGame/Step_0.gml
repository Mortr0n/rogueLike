/// what to do when all enemies have been killed

var enemies =[]
var allDead = true;





for (var i =0; i < instance_number(oEnemy); i++) {
	if (!instance_find(oEnemy, i).dead) allDead = false;
	enemies[i] = instance_find(oEnemy, i);
	debug_event("enemies counting");
}

if (allDead) game_restart();





