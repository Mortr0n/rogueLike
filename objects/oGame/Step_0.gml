/// what to do when all enemies have been killed


allDead = enemyCount < 0
enemyCount = instance_number(oEnemy)
show_debug_message($"enemyCount: {enemyCount}, AllDead: {allDead} ");
if enemyCount < 10 {
	oEnemy.alarm[0] = oEnemy._delayInSteps
}


//for (var i =0; i < instance_number(oEnemy); i++) {
//	if (!instance_find(oEnemy, i).dead) allDead = false;
//	enemies[i] = instance_find(oEnemy, i);
//	show_debug_message("enemies counting: " + string(array_length(enemies)) + "oEnemy: " + string(instance_number(oEnemy)));
//}

if (allDead) game_restart();





