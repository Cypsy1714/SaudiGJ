if(collision_circle(x, y, 40, obj_player, 0, 1))
{
		
	if(obj_player.y < y)
	{
	
		depth = 50;
	
	}
	else
	{
	
		depth = 250;
			
	}
		
}
else
{
	
	depth = 250;
	
}