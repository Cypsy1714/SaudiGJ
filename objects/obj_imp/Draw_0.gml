draw_self();
if(indicate)
{
	
	sub_c++;
	
	if(sub_c > sub_spd)
	{
	
		sub++;
		sub_c = 0;
	
	}
	
	if(sub > 5)
	{
		
		sub = 0;
		
	}
	
	draw_sprite(spr_press_e, sub, x, y - 3);
	
}