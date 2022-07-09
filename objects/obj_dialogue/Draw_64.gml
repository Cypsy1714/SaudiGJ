if(room == rm_Imp_Office or room == rm_Imp_Office_2 or room == rm_Imp_Office_3 or room == rm_Imp_Office_4 or room == rm_Imp_Office_5)
{
	draw_set_halign(fa_left);
	var cur_string = string_copy(text[page], 1, type_num);
	draw_set_font(munro48);
	//draw name
	draw_text_ext_transformed((x + outline * 2) * 4, (y + outline) * 4, name[page], text_sep, 500, 1, 1, 0);
	//draw text
	draw_text_ext_transformed((x + outline_text_width) * 4, (y + outline_text_up) * 4, cur_string, text_sep * 3, (sprite_width - (outline_text_width * 2)) * 4, 1, 1, 0);
	
	draw_set_font(munro);
}