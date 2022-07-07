if(global.menu_imp)
{

	draw_set_halign(fa_center);

	draw_sprite_ext(spr_black, 0, 0, 0, 20, 20, 0, -1, 0.3);

	draw_self();

	draw_text_ext_color(x + 40, y, "Missions", 20, 50, c_white, c_white, c_white, c_white, 1);
	draw_text_ext_color(x + 40 + 80, y, "Upgrade", 20, 50, c_white, c_white, c_white, c_white, 1);


	if(collision_rectangle(x, y, x + 80, y + 32, obj_mouse, false, true))
	{
	
		draw_sprite_ext(spr_black_1, 0, x, y, 80, 32, 0, -1, 0.2);
	
		if(mouse_check_button(mb_left))
		{
		
			page = 0;
		
		}

	}

	if(global.upgrade)
	{
	
	
	
	}
	else
	{
	
		draw_sprite_ext(spr_black_1, 0, x + 80, y, 80, 32, 0, -1, 0.6);
	
	}
	
	if(!(global.level >= 2))
	{
		draw_sprite_ext(spr_black_1, 0, x + 96, y + 48, 48, 48, 0, -1, 0.6);
	}
	if(!(global.level >= 3))
	{
		draw_sprite_ext(spr_black_1, 0, x + 16, y + 112, 48, 48, 0, -1, 0.6);
	}
	if(!(global.level >= 4))
	{
		draw_sprite_ext(spr_black_1, 0, x + 96, y + 112, 48, 48, 0, -1, 0.6);
	}
	
	if(collision_rectangle(x + 16, y + 48, x + 63, y + 95, obj_mouse, false, true) and global.level >= 1)
	{
		
		draw_sprite_ext(spr_black_1, 0, x + 16, y + 48, 48, 48, 0, -1, 0.2);
		
		if(mouse_check_button_pressed(mb_left))
		{
			
			room_goto(rm_level_1);
			global.menu_imp = false;
			audio_stop_all();
			
		}
		
	}

}