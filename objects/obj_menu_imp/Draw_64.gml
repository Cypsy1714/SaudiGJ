if(global.menu_imp)
{
	
	font_add_enable_aa(false);
	munro = font_add("munro.ttf", 36, 1, 0, 32, 128);
	draw_set_font(munro);
	draw_set_halign(fa_center);
	//draw_set_color(#FEAE34);
	//Font
	
	if(global.level >= 1)
	{
		
		draw_text_ext_color((x + (sprite_width / 2) - 4) * 4, (y + level_y_1) * 4, level_1_string, 1000, 1000, #B86F50, #B86F50, #B86F50, #B86F50, level_1_alpha)
		
	}
		if(global.level >= 2){draw_text_ext_color((x + (sprite_width / 2) - 4) * 4, (y + level_y_2) * 4, level_2_string, 1000, 1000, #B86F50, #B86F50, #B86F50, #B86F50, level_2_alpha)}
		if(global.level >= 3){draw_text_ext_color((x + (sprite_width / 2) - 4) * 4, (y + level_y_3) * 4, level_3_string, 1000, 1000, #B86F50, #B86F50, #B86F50, #B86F50, level_3_alpha)}
		if(global.level >= 4){draw_text_ext_color((x + (sprite_width / 2) - 4) * 4, (y + level_y_4) * 4, level_4_string, 1000, 1000, #B86F50, #B86F50, #B86F50, #B86F50, level_4_alpha)}
	
	if(page == 1)
	{
		
		draw_text_ext_color((x + (sprite_width / 2) - 4) * 4, (y + 100) * 4, string(global.coins), 1000, 1000, #181425 , #181425 , #181425 , #181425 , 1)
		draw_sprite_ext(spr_gold_coin, 0, (x + 19 * scale) * 4, (y + 98) * 4, 4, 4, 0, -1, 1);
		
	}
	
	if(page == 1 and !global.extra_revive)
	{
		
		draw_text_ext_color((x + (sprite_width / 2) + 15) * 4, (y + level_y_1) * 3, "+1 Revive", 1000, 1000, #181425 , #181425 , #181425 , #181425 , upgrade_1_alpha)
		
	}
	if(page == 1 and !global.dash)
	{
		
		draw_text_ext_color((x + (sprite_width / 2) + 15) * 4, (y + level_y_2) * 3, "Dash", 1000, 1000, #181425 , #181425 , #181425 , #181425 , upgrade_2_alpha)
		
	}
}