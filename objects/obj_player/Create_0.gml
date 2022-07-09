dead = false;
immune = false;
admin = false;

shadow_depth = 10000;
depth_org = depth;

shadow_id = instance_create_depth(x, y + 15, 1000, obj_shadow);

y_add = 0;
x_add = 0;

speed_ = 2;

if(room == rm_Imp_Office)
{
	
	global.player_outfit = 1;
	
}

if(room == rm_Imp_Office_2 or room == rm_Imp_Office_3 or room == rm_Imp_Office_4 or room == rm_Imp_Office_5)
{
	
	global.player_outfit = 2;
	
}

if(room == rm_level_1 or room == rm_level_2 or room == rm_level_3 or room == rm_level_4)
{
	
	global.player_outfit = 3;
	
}

if(global.player_outfit == 1)
{
	
	sprite[0] = spr_player_tshirt_idle;
	sprite[1] = spr_player_tshirt_idle;
	sprite[2] = spr_player_stealth_revive;
	sprite[3] = spr_player_stealth_death;
	
}
if(global.player_outfit == 2)
{
	
	sprite[0] = spr_player_armour_idle;
	sprite[1] = spr_player_armour_walk;
	sprite[2] = spr_player_stealth_revive;
	sprite[3] = spr_player_stealth_death;
	
}
if(global.player_outfit == 3 or room == rm_level_1)
{
	
	sprite[0] = spr_player_stealth_idle;
	sprite[1] = spr_player_stealth_walk;
	sprite[2] = spr_player_stealth_revive;
	sprite[3] = spr_player_stealth_death;
	
}
font_add_enable_aa(false);
munro = font_add("munro.ttf", 16, 0, 0, 32, 128);
draw_set_font(munro);

dont_move = true;
revive = false;
revive_anim = false;
revive_anim_t = 0;
revive_anim_spd = 8;
revive_anim_frame = 0;
just_anim = false;
if(room == rm_level_1 or room == rm_level_2 or room == rm_level_3 or room == rm_level_4)
{
	
	dead = true;
	revive = true;
	sprite_index = sprite[3];
	image_index = 5;
	just_anim = true;
	alarm[9] = 160;
	
}

if(global.extra_revive)	{revive_charge = 2;}
else					{revive_charge = 1;}


alarm[0] = 300;

ang = 0;
ang_r = false;
ang_spd = 0.5;

dash_spd = 6;
dash_leng = 10;
dash_t = 0;
dash_cooldown = 600;
dash_cool_t = 600;
dash = false;