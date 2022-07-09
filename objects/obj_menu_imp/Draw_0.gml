if(global.menu_imp)
{
	
	draw_self();
	
	font_add_enable_aa(false);
	munro = font_add("munro.ttf", 12, 1, 0, 32, 128);
	draw_set_font(munro);
	draw_set_halign(fa_center);
	//draw_set_color(#FEAE34);
	//Font

	if(global.upgrade)
	{
	
		if(collision_rectangle(x + (15 * scale), y + (7 * scale), x + 125, y, obj_mouse, false, true))
		{
	
			//draw_sprite_ext(spr_black_1, 0, x + (15 * scale), y, 80, 32, 0, -1, 0.2);
	
			if(mouse_check_button(mb_left) and page == 0)
			{
		
				page = 1;
				audio_play_sound(PAPER_FLIP_2, 80, false);
		
			}

		}
		if(page == 1)
		{
			
			if(collision_rectangle(x + (16 * scale), y + (55 * scale), x + (28 * scale), y + (67 * scale), obj_mouse, false, true) and mouse_check_button(mb_left))
			{
				
				page = 0;
				audio_play_sound(PAPER_FLIP_2, 80, false);
				
			}
			
			image_index = 1;
			
		}
		else
		{
			
			image_index = 0;
			
		}
	
	}
	else
	{
		image_index = 2;
		//draw_sprite_ext(spr_black_1, 0, x + (15 * scale), y, 49 * scale, 8 * scale, 0, -1, 0.6);
	
	}

}