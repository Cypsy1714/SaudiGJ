#region Movement
y_add = 0;
x_add = 0;

if(global.dash)
{
	
	if(dash_cool_t > dash_cooldown)
	{
		
		if(keyboard_check_pressed(vk_shift))
		{
			
			dash = true;
			dash_cool_t = 0;
			
		}
		
	}
	else
	{
		
		dash_cool_t++;
		
	}
	
	if(dash)
	{
		
		if(dash_t < dash_leng)
		{
			
			dash_t++;
			immune = true;
			image_alpha = 0.7;
			
			if(keyboard_check(ord("W")))
			{
	
				y_add -= dash_spd;
	
			}

			if(keyboard_check(ord("S")))
			{
	
				y_add += dash_spd;
	
			}

			if(keyboard_check(ord("A")))
			{
	
				x_add -= dash_spd;
	
			}

			if(keyboard_check(ord("D")))
			{
	
				x_add += dash_spd;
	
			}
			
		}
		else
		{
			
			dash = false;
			if(alarm[1] == -1)
			{
			immune = false;
			image_alpha = 1;
			}
			dash_t = 0;
			
			
		}
		
	}
	
}

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

if(room == rm_Imp_Office and dont_move)
{
	
	x_add = 0;
	y_add = 0;
	
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
#endregion
#region Animation

if(dead and sprite_index != sprite[2])
{
	
	if(sprite_index != sprite[3])
	{
		
		sprite_index = sprite[3];
		image_index = 0;
		
	}
	else if(image_index < image_number)
	{
		
		image_speed = 1;
		
	}
	else
	{
		
		image_speed = 0;
		
	}
	
} 

if(sprite_index == sprite[3] and revive and image_speed == 0)
{
	
	sprite_index = sprite[2];
	image_speed = 1;
	revive = false;
	
}
else if(sprite_index == sprite[2] and image_index >= image_number - 1)
{

	dead = false;
	if(!just_anim)
	{
	immune = true;
	image_alpha = 0.7;
	}
	alarm[1] = 120;

}

if(!dead)
{
	
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
		
			audio_play_sound(Running__1, 40, true);
		
		}
	
	}
	
}

/*if(revive_anim)
{
	
	sprite_index = sprite[2];
	image_speed = 1;
	
	if(revive_anim_t > revive_anim_spd)
	{
		
		revive_anim_t = 0;
		revive_anim_frame++;
		
	}
	else
	{
		
		revive_anim_t++;
		
	}
	
	image_index = revive_anim_frame;
	
	if(revive_anim_frame > image_number - 1)
	{
		
		revive_anim = false;
		
	}
	
}*/

#endregion
#region Revival
if(dead and revive_charge > 0 and !revive)
{
	
	if(keyboard_check_pressed(ord("E")))
	{
		
		revive = true;
		revive_charge--;
		
	}
	
	/*if(keyboard_check_pressed(ord("V")))
	{
		
		room_restart();
		
	}*/
	
}
if(dead and revive_charge == 0 and !revive)
{
	
	if(keyboard_check_pressed(ord("E")))
	{
		
		room_restart();
		
	}
	
}
#endregion
var x1 = x + (sprite_width / 4);
var x2 = x - (sprite_width / 4);
var y1 = y;
var y2 = y - 4;

if(collision_rectangle(x1 + x_add, y1, x2 + x_add, y2, obj_collision, true, true))
{
	
	if(sign(x_add))
	{
	
		while(!collision_rectangle(x1 + 1, y1, x2 + 1, y2, obj_collision, true, true))
		{
		
			x += 1;
			
			var x1 = x + (sprite_width / 4);
			var x2 = x - (sprite_width / 4);
			var y1 = y;
			var y2 = y - 4;
		
		}
	
	}
	else
	{
	
		while(!collision_rectangle(x1 - 1, y1, x2 - 1, y2, obj_collision, true, true))
		{
		
			x -= 1;
			
			var x1 = x + (sprite_width / 4);
			var x2 = x - (sprite_width / 4);
			var y1 = y;
			var y2 = y - 4;
		
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
			var y1 = y;
			var y2 = y - 4;
		
		}
	
	}
	else
	{
	
		while(!collision_rectangle(x1, y1 - 1, x2, y2 - 1, obj_collision, true, true))
		{
		
			y -= 1;
			
			var x1 = x + (sprite_width / 4);
			var x2 = x - (sprite_width / 4);
			var y1 = y;
			var y2 = y - 4;
		
		}
	
	}
	
	
}
else
{

	y += y_add;

}

if(x_add > 0)
{
	
	image_xscale = 1;

}
if(x_add < 0)
{
	
	image_xscale = -1;
	
}

if((room = rm_Imp_Office or room = rm_Imp_Office_2 or room = rm_Imp_Office_3 or room = rm_Imp_Office_4 or room = rm_Imp_Office_5) and image_xscale < 2 and image_xscale > -2)
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
	sprite[1] = spr_player_armour_walk;
	
}
if(global.player_outfit == 3 or room == rm_level_1)
{
	
	sprite[0] = spr_player_stealth_idle;
	sprite[1] = spr_player_stealth_walk;
	sprite[2] = spr_player_stealth_revive;
	sprite[3] = spr_player_stealth_death;
	
}

if(place_meeting(x, y, obj_bullet))
{
	
	dead = true;
	audio_play_sound(death, 100, false);
	
}

//Shadow
if(!dead)
{
	/*depth = shadow_depth;
	draw_sprite(spr_shadow, 0, x, y + 15);
	depth = depth_org;*/
	
	with(shadow_id)
	{
		
		x = obj_player.x;
		y = obj_player.y;
		
	}
}
else
{
	if(image_xscale == 1)	
	{
		with(shadow_id)
		{
		
			x = obj_player.x - 12;
			y = obj_player.y - 2;
		
		}
	
	}
	else					
	{
	
		with(shadow_id)
		{
		
			x = obj_player.x + 12;
			y = obj_player.y - 2;
		
		}
	
	}
	
	
}

//Finish Level
if(room == rm_level_1 and global.points == 8 and !instance_exists(obj_screenflash))
{
	
	//room_goto(rm_Imp_Office_2);
	//global.player_outfit = 2;
	immune = true;
	instance_create_depth(0, 0, 0, obj_screenflash);
	alarm[2] = 20;
	if(global.level < 2)
	{
		global.level = 2;
	}
	
}

if(room == rm_level_2 and global.points == 15 and !instance_exists(obj_screenflash))
{
	
	//room_goto(rm_Imp_Office_2);
	//global.player_outfit = 2;
	immune = true;
	instance_create_depth(0, 0, 0, obj_screenflash);
	alarm[3] = 20;
	global.coins++;
	if(global.level < 3)
	{
		global.level = 3;
	}
	
}

if(room == rm_level_3 and global.points == 20 and !instance_exists(obj_screenflash))
{
	
	//room_goto(rm_Imp_Office_2);
	//global.player_outfit = 2;
	immune = true;
	global.coins++;
	instance_create_depth(0, 0, 0, obj_screenflash);
	alarm[4] = 20;
	if(global.level < 4)
	{
		global.level = 4;
	}
	
}

if(room == rm_level_4 and global.points == 17 and !instance_exists(obj_screenflash))
{
	
	//room_goto(rm_Imp_Office_2);
	//global.player_outfit = 2;
	immune = true;
	global.coins++;
	instance_create_depth(0, 0, 0, obj_screenflash);
	alarm[5] = 20;
	if(global.level < 5)
	{
		global.level = 5;
	}
	
}

if(dead)
{
	
	obj_music.play = Player_is_down_3_music;
	
}

if(!admin)
{
	
	if(keyboard_check(ord("K")) and keyboard_check(ord("7")))
	{
		
		admin = true;
		
	}
	
}
else
{
	
	if(keyboard_check(ord("K")) and keyboard_check(ord("7")))
	{
		
		admin = false;
		immune = false;
		
	}
	
	immune = true;
	if(keyboard_check_pressed(ord("1"))){room_goto(rm_level_1)}
	if(keyboard_check_pressed(ord("2"))){room_goto(rm_level_2)}
	if(keyboard_check_pressed(ord("3"))){room_goto(rm_level_3)}
	if(keyboard_check_pressed(ord("4"))){room_goto(rm_level_4)}
	
}