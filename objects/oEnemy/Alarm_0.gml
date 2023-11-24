/// @description Insert description here
// You can write your code in this editor

show_debug_message("creating instance of oEnemy")
var enemyInstance
var enemyCounter = instance_number(oEnemy)


if enemyCounter < 10 {
	show_debug_message("enemy Count: " + string(enemyCounter))
	enemyInstance = instance_create_layer((round(random_range(10, room_width))), (round(random_range(10, room_height))), "Instances", oEnemy);
}

