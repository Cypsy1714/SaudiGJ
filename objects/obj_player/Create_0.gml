dead = false;

y_add = 0;
x_add = 0;

speed_ = 2;

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
font_add_enable_aa(false);
munro = font_add("munro.ttf", 16, 0, 0, 32, 128);
draw_set_font(munro);