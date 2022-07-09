font_add_enable_aa(false);
munro = font_add("munro.ttf", 16, 0, 0, 32, 128);
draw_set_font(munro);

page = 0;

scale = 2;

image_xscale = scale;
image_yscale = scale;

level_y_1 = 44;
level_1_string = "Small Museum";
level_1_alpha = 1;

level_y_2 = 62;
level_2_string = "Knox City Museum";
level_2_alpha = 1;

level_y_3 = 80;
level_3_string = "Luxurious Hotel";
level_3_alpha = 1;

level_y_4 = 98;
level_4_string = "Military Complex";
level_4_alpha = 1;

if(global.level < 3)
{
	
	global.upgrade = false;
	image_index = 2;
	
}
else
{
	image_index = 0;
	global.upgrade = true;
	
}

upgrade_2_alpha = 1;
upgrade_1_alpha = 1;