draw_sprite_ext(spr_black, 0, 0, 0, 20, 20, 0, -1, alpha);

draw_self();
	draw_set_halign(fa_center);
	var cur_string = string_copy("Thus it was the end of his journey or was it just a new beggining?", 1, type_num);
	
	//draw text
	draw_text_ext_transformed(240, 130, cur_string, 20, 298, 1, 1, 0);