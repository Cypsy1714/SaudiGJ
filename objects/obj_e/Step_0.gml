if(collision_circle(x, y + 10, 25, obj_player, false, true) and keyboard_check_pressed(ord("E")))
{
	if(global.menu_imp)	{global.menu_imp = false;}
	else				{global.menu_imp = true;}
}

/*if(obj_imp.indicate)
{
	
	visible = true;
	
}*/
else
{
	
	if(collision_circle(x, y + 10, 25, obj_player, false, true))
	{
		
		visible = true;
		
	}
	else
	{
		
		visible = false;
		
	}
	
}

if(global.menu_imp)
{
	
	visible = false;
	
}