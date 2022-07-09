if(!obj_player.dead and !obj_player.immune)
{
#region // Detect

if(vision_dir == "up")
{
	
	var v_x2 = x + vision_width / 2
	var v_y2 = y - vision_lenght
	var v_x3 = x - vision_width / 2
	var v_y3 = y - vision_lenght
	
}

if(vision_dir == "down")
{
	
	var v_x2 = x + vision_width / 2
	var v_y2 = y + vision_lenght
	var v_x3 = x - vision_width / 2
	var v_y3 = y + vision_lenght
	
}

if(vision_dir == "right")
{
	
	var v_x2 = x + vision_lenght
	var v_y2 = y + vision_width / 2
	var v_x3 = x + vision_lenght
	var v_y3 = y - vision_width / 2
	
}

if(vision_dir == "left")
{
	
	var v_x2 = x - vision_lenght
	var v_y2 = y + vision_width / 2
	var v_x3 = x - vision_lenght
	var v_y3 = y - vision_width / 2
	
}

var blocked_vision = collision_line(x, y, obj_player.x, obj_player.y, obj_collision, true, true);

if(point_in_triangle(obj_player.x, obj_player.y, x, y, v_x2, v_y2, v_x3, v_y3) and !blocked_vision)
{
	
	see = true;
	
}
else
{
	
	see = false;
	
}

if(point_in_circle(obj_player.x, obj_player.y, x, y, sense_radius) and !blocked_vision)
{
	
	see = true;
	
}


if(see and !investigate)
{
	
	see_t++;
	if(see_t > see_buffer)
	{
		
		alert_sprite = true;
		investigate = true;
		sense_radius = 180;
		audio_play_sound(Alert_from_guard, 80, false);
		
	}
	
}
else
{
	if(see_t > 0)
	{
		
		see_t++;
		
	}
	
}
#endregion

//Investigate

if(investigate)
{
	
	if(see)
	{
		
		last_seen_x = obj_player.x;
		last_seen_y = obj_player.y;
		
		attack_t++;
		investigate_t = investigate_max;
		
		if(attack_t > attack_buffer)
		{
			
			attack = true;
		
		}
		
	}
	else
	{
		
		if(attack_t > 0)
		{
			
			attack_t--;
			
		}
		investigate_t--;
		
	}
	
	if(investigate_t <= 0)
	{
		
		investigate = false;
		attack = false;
		sense_radius = 40;
		audio_play_sound(Deagro_guard, 80, false);
		obj_music.play = SNEAKING_VERSION_3;
		
	}
	
	mp_potential_step_object(last_seen_x, last_seen_y, spd, obj_collision);
	
	var angle = point_direction(x, y, last_seen_x, last_seen_y);
	
	if(angle < 90) //sag ust
	{
		
		var char_dir = angle / 90;
		y_spd = -1 * (char_dir * spd);
		x_spd = spd + y_spd;
		
	}
	else if(angle < 180)
	{
	
		var di = (angle - 90) / 90;
		
		x_spd = -1 * (di * spd);
		y_spd = -1 * (spd + x_spd);
		
	}
	else if(angle < 270)
	{
	
		var di = (angle - 180) / 90;
		
		y_spd = 1 * (di * spd);
		x_spd = -1 * (spd - y_spd);
		
	}
	else if(angle < 360)
	{
	
		var di = (angle - 270) / 90;
		
		x_spd = 1 * (di * spd);
		y_spd = 1 * (spd - x_spd);
		
	}
	
	//
	
	if(last_seen_x + 5 > x and last_seen_x - 5 < x and last_seen_y + 5 > y and last_seen_y - 5 < y)
	{
		
		x_spd = 0;
		y_spd = 0;
		
	}
	
	if(!investigate)
	{
		
		x_spd = 0;
		y_spd = 0;
		
	}
	
}

//Attack

if(attack)
{
	if(see)
	{
		
		if(collision_circle(x, y, 10, obj_player, 0, 1) and !shoot)
		{
			
			audio_play_sound(GUNSHOT, 100, false);
			alarm[0] = 20;
			shoot = true;
			
		}
		
		/*shoot_t ++;
		
		if(shoot_speed < shoot_t)
		{
			
			shoot_t = 0;
			shoot = true;
			
		}*/
		
		if(shoot)
		{
			
			if(sprite_index == spr_guard_shooting and image_index >= image_number - 1)
			{
				obj_player.dead = true;
				shoot = false;
				sprite_index = spr_guard_walking;
				
			}
			
			if(sprite_index != spr_guard_shooting)
			{
				
				sprite_index = spr_guard_shooting;
				
			}
			
		}
		
		attack_c_t = 0;
		
	}
	else
	{
		
		attack_c_t++;
		
		if(attack_c_t > 300)
		{
			
			attack = false;
			spd = 1;
			obj_music.play = SNEAKING_VERSION_3;
			
		}
		
	}
	
	spd = 2;
	
}
else
{
	
	spd = 1;
	
}
}
else
{
	
	spd = 1;
	investigate = false;
	attack = false;
	shoot = false;
	
}
//Patrol
if(!investigate and !attack)
{
	if(!(nodex[cur_node] + 2 > x and nodex[cur_node] - 2 < x and nodey[cur_node] + 2 > y and nodey[cur_node] - 2 < y))
	{
		mp_potential_step_object(nodex[cur_node], nodey[cur_node], spd, obj_collision);	
	}
	
	var angle = point_direction(x, y, nodex[cur_node], nodey[cur_node]);
	
	if(angle < 90) //sag ust
	{
		
		var char_dir = angle / 90;
		y_spd = -1 * (char_dir * spd);
		x_spd = spd + y_spd;
		
	}
	else if(angle < 180)
	{
	
		var di = (angle - 90) / 90;
		
		x_spd = -1 * (di * spd);
		y_spd = -1 * (spd + x_spd);
		
	}
	else if(angle < 270)
	{
	
		var di = (angle - 180) / 90;
		
		y_spd = 1 * (di * spd);
		x_spd = -1 * (spd - y_spd);
		
	}
	else if(angle < 360)
	{
	
		var di = (angle - 270) / 90;
		
		x_spd = 1 * (di * spd);
		y_spd = 1 * (spd - x_spd);
		
	}
	
	if(nodex[cur_node] + 2 > x and nodex[cur_node] - 2 < x and nodey[cur_node] + 2 > y and nodey[cur_node] - 2 < y)
	{
		
		x_spd = 0;
		y_spd = 0;
		
		node_t++;
		
		if(node_t > nodew[cur_node])
		{
			
			var ar_len = array_length(nodex);
			if (ar_len - 1 <= cur_node)
			{
				
				cur_node = 0;
				node_t = 0;
				
			}
			else
			{
				
				cur_node = cur_node + 1;
				node_t = 0;
				
			}
			
		}
		
	}
	
	//detect lineofsight
	
}

//Walk

if(!sign(y_spd))
{
	var yspd = -1*y_spd;
}
else
{
	var yspd = y_spd;
}

if(!sign(x_spd))
{
	var xspd = -1*x_spd;
}
else
{
	var xspd = x_spd;
}

if(xspd != 0 or yspd != 0)
{
	
	if(xspd > yspd)
	{
		
		if(sign(x_spd))
		{
			
			vision_dir = "right";
			
		}
		else
		{
			
			vision_dir = "left";
			
		}
		
	}
	else
	{
		
		if(sign(y_spd))
		{
			
			vision_dir = "down";
			
		}
		else
		{
			
			vision_dir = "up";
			
		}
		
	}
	
}

/*
if(place_meeting(x + x_spd, y + y_spd, obj_collision))
{
		
		var x_s = sign(x_spd);
		var y_s = sign(y_spd);
		
		//eger capraz ise
		if(place_meeting(x + x_spd, y, obj_collision) and place_meeting(x, y + y_spd, obj_collision))
		{
			
			y_spd = 0;
			x_spd = 0;
			
		}
		else if(place_meeting(x + x_spd, y, obj_collision))//x sikinti ise
		{
			
			if(x_s)	{var x_ad = x_spd}
			else	{var x_ad = -x_spd}
			
			if(y_s)
			{
				
				y_spd = y_spd + x_ad;
				
			}
			else
			{
				
				y_spd = y_spd - x_ad;
				
			}
			
		}
		else if(place_meeting(x, y + y_spd, obj_collision))//y sikinti ise
		{
			
			if(y_s)	{var y_ad = y_spd}
			else	{var y_ad = -y_spd}
			
			if(x_s)
			{
				
				x_spd = x_spd + y_ad;
				
			}
			else
			{
				
				x_spd = x_spd - y_ad;
				
			}
			
		}
		
		
	
}



if(place_meeting(x + x_spd, y, obj_collision))
{
	
	if(sign(x_spd))
	{
	
		while(!place_meeting(x + 1, y, obj_collision))
		{
		
			x += 1;
		
		}
	
	}
	else
	{
	
		while(!place_meeting(x - 1, y, obj_collision))
		{
		
			x -= 1;
		
		}
	
	}
	
	
}
else
{

	x += x_spd;

}

if(place_meeting(x, y + y_spd, obj_collision))
{
	
	if(sign(y_spd))
	{
	
		while(!place_meeting(x, y + 1, obj_collision))
		{
		
			y += 1;
		
		}
	
	}
	else
	{
	
		while(!place_meeting(x, y - 1, obj_collision))
		{
		
			y -= 1;
		
		}
	
	}
	
	
}
else
{

	y += y_spd;

}
*/
if(!shoot)
{
	if(x_spd == 0 and y_spd == 0 and sprite_index != spr_guard_idle){sprite_index = spr_guard_idle;}
	if((x_spd != 0 or y_spd != 0) and sprite_index != spr_guard_walking){sprite_index = spr_guard_walking;}
}

if(x_spd > 0)
{
	
	image_xscale = 1;

}
if(x_spd < 0)
{
	
	image_xscale = -1;
	
}

if(investigate or attack)
{
	
	obj_music.play = ACTION_VERSION_3;
	
}

if(image_xscale == 1)
{
	
	with(shadow_id)
	{
		
		x = partner.x - 2;
		y = partner.y + 10;
		
	}
	
}
else
{
	
	with(shadow_id)
	{
		
		x = partner.x + 2;
		y = partner.y + 10;
		
	}
	
}