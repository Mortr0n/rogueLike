/// centering camera on room, camera is in top left of room currently so we are subtracting out half of the room
/// height and width to center the camera
enemyCount = instance_number(oEnemy)

show_debug_message("EnemyCount from oGame: " + string(enemyCount))

camera_set_view_pos(view_camera[0], room_width / 2 - 320, room_height / 2 -180)

//enemies = []

//window_set_fullscreen(true);



