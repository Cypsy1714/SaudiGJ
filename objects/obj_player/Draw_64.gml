/*draw_sprite_ext(spr_gold_coin, 0, 8, 26, 3, 3, 0, -1, 1);
draw_text_ext_transformed( 24 * 3, 16, dash, 8, 64, 3, 3, 0);
draw_text_ext_transformed( 24 * 3, 200, dash_cool_t, 8, 64, 3, 3, 0);
draw_text_ext_transformed( 24 * 3, 100, dash_cooldown, 8, 64, 3, 3, 0);*/

if(dead and !just_anim)
{
	
	if(revive_charge > 0)
	{
		
		font_add_enable_aa(false);
		munro = font_add("munro.ttf", 48, 0, 0, 32, 128);
		draw_set_font(munro);
		draw_set_color(#FEAE34);
		draw_set_halign(fa_center);
		
		/*if(ang_r)
		{
			
			ang -= ang_spd;
			
			if(ang < -20)
			{
				
				ang_r = false;
				
			}
			
		}
		else
		{
			
			ang += ang_spd;
			
			if(ang > 20)
			{
				
				ang_r = true;
				
			}
			
		}*/
		
		draw_text_transformed_color(960, 360, "Press : 'E' to Revive.", 1, 1, ang, #FEAE34, #FEAE34, #FEAE34, #FEAE34, 1);
		
	}
	else if(sprite_index == sprite[3] and !revive)
	{
		
		font_add_enable_aa(false);
		munro = font_add("munro.ttf", 48, 0, 0, 32, 128);
		draw_set_font(munro);
		draw_set_color(#FEAE34);
		draw_set_halign(fa_center);
		
		/*if(ang_r)
		{
			
			ang -= ang_spd;
			
			if(ang < -20)
			{
				
				ang_r = false;
				
			}
			
		}
		else
		{
			
			ang += ang_spd;
			
			if(ang > 20)
			{
				
				ang_r = true;
				
			}
			
		}*/
		
		draw_text_transformed_color(960, 360, "Press : 'E' to restart the Level.", 1, 1, ang, #FEAE34, #FEAE34, #FEAE34, #FEAE34, 1);
		
	}
	
}