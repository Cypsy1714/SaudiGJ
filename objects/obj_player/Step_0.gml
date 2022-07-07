//Movement

y_add = 0;
x_add = 0;

if(keyboard_check(ord("W")))
{
	
	y_add -= speed_;
	
}

if(keyboard_check(ord("S")))
{
	
	y_add += speed_;
	
}

if(keyboard_check(ord("A")))
{
	
	x_add -= speed_;
	
}

if(keyboard_check(ord("D")))
{
	
	x_add += speed_;
	
}


if(x_add != 0 and y_add != 0)
{
	
	x_add = round(x_add / 2);
	y_add = round(y_add / 2);
	
}

if(global.dialouge or global.menu_imp or dead)
{
	
	x_add = 0;
	y_add = 0;
	
}

var x1 = x + (sprite_width / 4);
var x2 = x - (sprite_width / 4);
var y1 = y + (sprite_height / 2);
var y2 = y + (sprite_height / 2) - 4;

if(collision_rectangle(x1 + x_add, y1, x2 + x_add, y2, obj_collision, true, true))
{
	
	if(sign(x_add))
	{
	
		while(!collision_rectangle(x1 + 1, y1, x2 + 1, y2, obj_collision, true, true))
		{
		
			x += 1;
			
			var x1 = x + (sprite_width / 4);
			var x2 = x - (sprite_width / 4);
			var y1 = y + (sprite_height / 2);
			var y2 = y + (sprite_height / 2) - 4;
		
		}
	
	}
	else
	{
	
		while(!collision_rectangle(x1 - 1, y1, x2 - 1, y2, obj_collision, true, true))
		{
		
			x -= 1;
			
			var x1 = x + (sprite_width / 4);
			var x2 = x - (sprite_width / 4);
			var y1 = y + (sprite_height / 2);
			var y2 = y + (sprite_height / 2) - 4;
		
		}
	
	}
	
	
}
else
{

	x += x_add;

}


if(collision_rectangle(x1, y1 + y_add, x2, y2 + y_add, obj_collision, true, true))
{
	
	if(sign(y_add))
	{
	
		while(!collision_rectangle(x1, y1 + 1, x2, y2 + 1, obj_collision, true, true))
		{
		
			y += 1;
			
			var x1 = x + (sprite_width / 4);
			var x2 = x - (sprite_width / 4);
			var y1 = y + (sprite_height / 2);
			var y2 = y + (sprite_height / 2) - 4;
		
		}
	
	}
	else
	{
	
		while(!collision_rectangle(x1, y1 - 1, x2, y2 - 1, obj_collision, true, true))
		{
		
			y -= 1;
			
			var x1 = x + (sprite_width / 4);
			var x2 = x - (sprite_width / 4);
			var y1 = y + (sprite_height / 2);
			var y2 = y + (sprite_height / 2) - 4;
		
		}
	
	}
	
	
}
else
{

	y += y_add;

}

//Animation

if(x_add == 0 and y_add == 0)
{
	
	sprite_index = sprite[0];
	if(audio_is_playing(Running__1))
	{
		
		audio_stop_sound(Running__1);
		
	}
	
}
else if(sprite_index == sprite[0])
{
	
	sprite_index = sprite[1];
	if(!audio_is_playing(Running__1))
	{
		
		audio_play_sound(Running__1, 40, false);
		
	}
	
}

if(x_add > 0)
{
	
	image_xscale = 1;

}
if(x_add < 0)
{
	
	image_xscale = -1;
	
}

if(room = rm_Imp_Office and image_xscale < 2 and image_xscale > -2)
{
	
	image_xscale = image_xscale * 2;
	
}

if(global.player_outfit == 1)
{
	
	sprite[0] = spr_player_tshirt_idle;
	sprite[1] = spr_player_tshirt_idle;
	
}
if(global.player_outfit == 2)
{
	
	sprite[0] = spr_player_armour_idle;
	sprite[1] = spr_player_armour_idle;
	
}

if(place_meeting(x, y, obj_bullet))
{
	
	dead = true;
	audio_play_sound(death, 100, false);
	
}

if(dead and keyboard_check_pressed(ord("E")))
{
	
	room_restart();
	global.points = 0;
	
}