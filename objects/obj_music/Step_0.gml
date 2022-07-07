if(room = rm_Imp_Office and music != HELLS_OFFICE)
{
	alarm[0] = 360;
	music = HELLS_OFFICE;
}

if(play == SNEAKING_VERSION_3 and music != SNEAKING_VERSION_3)
{
	
	alarm[1] = 5;
	music = SNEAKING_VERSION_3;
	
}

if(play == ACTION_VERSION_3 and music != ACTION_VERSION_3)
{
	
	alarm[1] = -1;
	audio_stop_sound(SNEAKING_VERSION_3);
	audio_play_sound(ACTION_VERSION_3, 30, true);
	music = ACTION_VERSION_3;
	
}