/// 

x = oPlayer.x;
y = oPlayer.y;

image_angle = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y)


// choosing whether gun is infront of player sprite or behind.  Remember to have the 2 instances for the object
// one higher on the Layers hierarchy for in front and one lower on the heirerarchy for behind the player.  This is 
// the code for those 2 layers based on the direction the image is facing.w
if (image_angle > 0 && image_angle < 180) {
	layer = layer_get_id("gunback")
} else {
	layer = layer_get_id("gunfront")
}



