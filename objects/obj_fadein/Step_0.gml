if(alpha != 1)
{
	
	alpha += alpha_spd;
	
}
if(alpha > 1)
{
	
	
	alpha = 1;
	
}

if(alpha > 0.80)
{

	if(type_t > type_spd)
	{
	
		type_num++;
		type_t = 0;
	
	}
	else
	{

		type_t++;
	
	}
	
}

if(type_num > (string_length("Thus it was the end of his journey or was it just a new beggining?") + 8) and !bruh)
{
	
	var a = instance_create_depth(0, 0, -100, obj_screenflash);
	
	audio_play_sound(Black_Screen_OUT, 40, false);
	with(a)
	{
		
		spd = 0.005;
		
	}
	
	alarm[0] = 199;
	bruh = true;
	
}