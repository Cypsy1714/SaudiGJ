if(page == 0)
{

	if(collision_rectangle(x,y + 16 * scale,x + 60 * scale,y + 28 * scale, obj_mouse, true, true) and global.level >= 1)
	{
	
		level_1_alpha = 0.8;
	
		if(mouse_check_button_pressed(mb_left))
		{
		
			instance_create_depth(0, 0, -10000, obj_screenflash);
			alarm[1] = 20;
			global.menu_imp = false;
			audio_play_sound(PAPER_FLIP, 80, false);
		
		}
	
	}
	else if(global.level >= 1)
	{
	
		level_1_alpha = 1;
	
	}
	else
	{
	
		level_1_alpha = 0.3;
	
	}

	if(collision_rectangle(x,y + 28 * scale,x + 60 * scale,y + 40 * scale, obj_mouse, true, true) and global.level >= 2)
	{
	
		level_2_alpha = 0.8;
	
		if(mouse_check_button_pressed(mb_left))
		{
		
			instance_create_depth(0, 0, -10000, obj_screenflash);
			alarm[2] = 20;
			global.menu_imp = false;
			audio_play_sound(PAPER_FLIP, 80, false);
		
		}
	
	}
	else if(global.level >= 2)
	{
	
		level_2_alpha = 1;
	
	}
	else
	{
	
		level_2_alpha = 0.3;
	
	}

	if(collision_rectangle(x,y + 40 * scale,x + 60 * scale,y + 52 * scale, obj_mouse, true, true) and global.level >= 3)
	{
	
		level_3_alpha = 0.8;
	
		if(mouse_check_button_pressed(mb_left))
		{
		
			instance_create_depth(0, 0, -10000, obj_screenflash);
			alarm[3] = 20;
			global.menu_imp = false;
			audio_play_sound(PAPER_FLIP, 80, false);
		
		}
	
	}
	else if(global.level >= 2)
	{
	
		level_3_alpha = 1;
	
	}
	else
	{
	
		level_3_alpha = 0.3;
	
	}
	
	if(collision_rectangle(x,y + 52 * scale,x + 60 * scale,y + 64 * scale, obj_mouse, true, true) and global.level >= 4)
	{
	
		level_4_alpha = 0.8;
	
		if(mouse_check_button_pressed(mb_left))
		{
		
			instance_create_depth(0, 0, -10000, obj_screenflash);
			alarm[4] = 20;
			global.menu_imp = false;
			audio_play_sound(PAPER_FLIP, 80, false);
		
		}
	
	}
	else if(global.level >= 2)
	{
	
		level_4_alpha = 1;
	
	}
	else
	{
	
		level_4_alpha = 0.3;
	
	}

}
else
{
	
	if(collision_rectangle(x + 17,y + 8 * scale,x + 60 * scale,y + 20 * scale, obj_mouse, true, true) and page == 1 and global.coins > 0)
	{
	
		upgrade_1_alpha = 0.8;
	
		if(mouse_check_button_pressed(mb_left) and global.extra_revive == false)
		{
		
			/*instance_create_depth(0, 0, -10000, obj_screenflash);
			alarm[1] = 20;
			global.menu_imp = false;*/
			audio_play_sound(PAPER_FLIP, 80, false);
			global.coins--;
			global.extra_revive = true;
			
		
		}
	
	}
	else if(global.upgrade)
	{
	
		upgrade_1_alpha = 1;
	
	}
	else
	{
	
		upgrade_1_alpha = 0.3;
	
	}
	
	if(collision_rectangle(x + 17,y + 20 * scale,x + 60 * scale,y + 32 * scale, obj_mouse, true, true) and page == 1 and global.coins > 0)
	{
	
		upgrade_2_alpha = 0.8;
	
		if(mouse_check_button_pressed(mb_left) and global.dash == false)
		{
		
			/*instance_create_depth(0, 0, -10000, obj_screenflash);
			alarm[1] = 20;
			global.menu_imp = false;*/
			audio_play_sound(PAPER_FLIP, 80, false);
			global.coins--;
			global.dash = true;
			
		
		}
	
	}
	else if(global.upgrade)
	{
	
		upgrade_2_alpha = 1;
	
	}
	else
	{
	
		upgrade_2_alpha = 0.3;
	
	}
	
}