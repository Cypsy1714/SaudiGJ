if(room != rm_intro)
{
draw_self();
}

	draw_set_halign(fa_left);
	var cur_string = string_copy(text[page], 1, type_num);
	
	//draw name
	draw_text_ext_transformed(x + outline * 2, y - outline, name[page], text_sep, 32, 1, 1, 0);
	//draw text
	draw_text_ext_transformed(x + outline_text_width, y + outline_text_up, cur_string, text_sep, sprite_width - (outline_text_width * 2), 1, 1, 0);