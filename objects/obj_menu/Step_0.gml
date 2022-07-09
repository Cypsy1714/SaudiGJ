if(keyboard_check_pressed(ord("E")))
{
	
	room_goto(rm_intro);
	
}

if(alpha_rev)
{
	
	alpha -= alpha_spd;
	if(alpha < 0)
	{
		
		alpha = 0;
		alpha_rev = false;
		
	}
	
}
else
{
	
	alpha += alpha_spd;
	if(alpha > 1)
	{
		
		alpha = 1;
		alpha_rev = true;
		
	}
	
}