if(room = rm_Imp_Office and music != HELLS_OFFICE)
{
	alarm[0] = 60;
	music = HELLS_OFFICE;
}

if((room = rm_Imp_Office_2 or room = rm_Imp_Office_3 or room = rm_Imp_Office_4 or room = rm_Imp_Office_5) and music != HELLS_OFFICE)
{
	audio_stop_all();
	alarm[0] = 60;
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
	audio_stop_sound(Player_is_down_3_music);
	audio_stop_sound(ACTION_VERSION_3);
	audio_play_sound(ACTION_VERSION_3, 30, true);
	music = ACTION_VERSION_3;
	
}

if(play == Player_is_down_3_music and music != Player_is_down_3_music and !obj_player.just_anim)
{
	
	alarm[1] = -1;
	audio_stop_sound(SNEAKING_VERSION_3);
	audio_stop_sound(ACTION_VERSION_3);
	audio_play_sound(Player_is_down_3_music, 30, true);
	music = Player_is_down_3_music;
	
}