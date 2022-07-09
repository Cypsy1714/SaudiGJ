if(obj_player.y < 135)
{
	
	depth = 10;
	
}
else
{
	
	depth = 150;
	
}

if(room == rm_Imp_Office and obj_dialogue.page == 18)
{
	
	indicate = true;
	
}

if(collision_circle(x, y + 10, 55, obj_player, false, true) and keyboard_check_pressed(ord("E")))
{
	//if(global.menu_imp)	{global.menu_imp = false;}
	//else				{global.menu_imp = true;}
	
	indicate = false;
	
}