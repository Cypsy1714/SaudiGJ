if((keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("E"))) and visible)
{
	
	if(type_num < string_length(text[page]))
	{
		
		type_num = string_length(text[page]);
		
	}
	else
	{
		
		var ar_len = array_length(name)
		if(ar_len - 1 <= page)
		{
		
			visible = false;
			page = 0;
		
		}
		else
		{
		
			page++;
			type_num = 0;
			type_counter = 0;
		
		}
	
	}
	
}

if(type_num < string_length(text[page]) and visible)
{
	
	if(type_counter >= type_spd)
	{
		
		type_counter = 0;
		type_num++;
		
	}
	else
	{
		
		type_counter++;
		
	}
	
}

#region Scripts

if(variation == 1) //Intro
{
	
	if(!visible)
	{
		
		room_goto(rm_Imp_Office);
		global.intro_trans = true;
		
	}
	
	if(page == 5 and type_num == 1)
	{
		
		alarm[0] = 8;
		
	}
	
}
if(variation == 2 and global.intro_trans == true and obj_intro_effect.alpha == 0 and open_vis) //Intro Imp Office
{
	
	visible = true;
	open_vis = false;
	
}
if(variation == 2 and global.intro_trans == true and obj_intro_effect.alpha != 0) //Intro Imp Office
{
	
	visible = false;
	type_num = 0;
	
}
if(variation == 2 and page == 36 and type_num >= 45)
{
	
	global.player_outfit = 2;
	
	if(!audio_is_playing(finger_snap) and !snap)
	{
		
		snap = true;
		audio_play_sound(finger_snap, 40, false);
		
	}
	
}

#endregion

if(visible)	{global.dialouge = true;}
else		{global.dialouge = false;}

if(name[page] == "Impo" and visible)
{
	
	if(type_num < string_length(text[page]))
	{
	
		if(!audio_is_playing(Speech__5_alt))
		{
		
			audio_play_sound(Speech__5_alt, 40, true);
		
		}
	
	}
	else
	{
		
		if(audio_is_playing(Speech__5_alt))
		{
		
			audio_stop_sound(Speech__5_alt);
		
		}
		
	}
	
}
else
{
	
	if(audio_is_playing(Speech__5_alt))
	{
		
		audio_stop_sound(Speech__5_alt);
		
	}
	
}

if(name[page] == "Narrator" and visible)
{
	
	if(type_num < string_length(text[page]))
	{
	
		if(!audio_is_playing(Speech__2))
		{
		
			audio_play_sound(Speech__2, 40, true);
		
		}
	
	}
	else
	{
		
		if(audio_is_playing(Speech__2))
		{
		
			audio_stop_sound(Speech__2);
		
		}
		
	}
	
}
else
{
	
	if(audio_is_playing(Speech__2))
	{
		
		audio_stop_sound(Speech__2);
		
	}
	
}