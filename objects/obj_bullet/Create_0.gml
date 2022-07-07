spd = 8;
x_spd = 0;
y_spd = 0;

var angle = point_direction(x, y, obj_player.x, obj_player.y);
	
if(angle < 90) //sag ust
{
		
	var char_dir = angle / 90;
	y_spd = -1 * (char_dir * spd);
	x_spd = spd + y_spd;
		
}
else if(angle < 180)
{
	
	var di = (angle - 90) / 90;
		
	x_spd = -1 * (di * spd);
	y_spd = -1 * (spd + x_spd);
		
}
else if(angle < 270)
{
	
	var di = (angle - 180) / 90;
		
	y_spd = 1 * (di * spd);
	x_spd = -1 * (spd - y_spd);
		
}
else if(angle < 360)
{
	
	var di = (angle - 270) / 90;
		
	x_spd = 1 * (di * spd);
	y_spd = 1 * (spd - x_spd);
		
}

x_spd = x_spd + random_range(-0.7, 0.7);
y_spd = y_spd + random_range(-0.7, 0.7);

image_angle = angle - 90;

