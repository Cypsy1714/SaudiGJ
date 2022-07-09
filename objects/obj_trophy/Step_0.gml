if((!obj_player.dead and !obj_player.immune) or obj_player.admin)
{

	if(keyboard_check_pressed(ord("E")))
	{
	
		if(collision_circle(x, y, 20, obj_player, true, true) and !collision_line(x, y, obj_player.x, obj_player.y, obj_collision, true, true) and sprite_index != sprite_empty[num])
		{
		
			global.points += 1;
			sprite_index = sprite_empty[num];
		
			if(random(2) > 1)
			{
		
				audio_play_sound(grabbing_item_1, 50, false);
		
			}
			else
			{
		
				audio_play_sound(grabbing_item_2, 50, false);
		
			}
		
		}
	
	}

	if(collision_circle(x, y, 20, obj_player, true, true) and !collision_line(x, y, obj_player.x, obj_player.y, obj_collision, true, true) and sprite_index != sprite_empty[num])
	{
		
		image_index = 1;
		
	}
	else
	{
	
		image_index = 0;
	
	}

}

if(collision_circle(x, y, 20, obj_player, true, true) and !collision_line(x, y, obj_player.x, obj_player.y, obj_collision, true, true) and sprite_index != sprite_empty[num])
{
		
	image_index = 1;
		
}
else
{
	
	image_index = 0;
	
}