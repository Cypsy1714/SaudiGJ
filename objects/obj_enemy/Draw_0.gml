
//draw_triangle_color(x, y, x + vision_width / 2, y + vision_lenght, x - vision_width / 2, y + vision_lenght, c_red, c_red, c_red, c_black);
/*
if(vision_dir == "up")
{
	
	draw_triangle_color(x, y, x + vision_width / 2, y - vision_lenght, x - vision_width / 2, y - vision_lenght, c_red, c_red, c_red, c_black);
	
}

if(vision_dir == "down")
{
	
	draw_triangle_color(x, y, x + vision_width / 2, y + vision_lenght, x - vision_width / 2, y + vision_lenght, c_red, c_red, c_red, c_black);
	
}

if(vision_dir == "right")
{
	
	draw_triangle_color(x, y, x + vision_lenght, y + vision_width / 2, x + vision_lenght, y - vision_width / 2, c_red, c_red, c_red, c_black);
	
}

if(vision_dir == "left")
{
	
	draw_triangle_color(x, y, x - vision_lenght, y + vision_width / 2, x - vision_lenght, y - vision_width / 2, c_red, c_red, c_red, c_black);
	
}
*/

//draw_circle_color(x, y, sense_radius, c_red, c_red, c_black);



draw_self();


//draw_text_color(16, 16, attack, c_white, c_white, c_white, c_white, 1);

if(alert_sprite)
{
	
	alert_t++;
	
	if(alert_t > alert_spd)
	{
	
		alert_submig++;
		alert_t = 0;
	
	}
	
	if(alert_submig > 7)
	{
		
		alert_submig = 0;
		alert_sprite = false;
		
	}
	
	draw_sprite_ext(spr_alert, alert_submig, x, y - 20, 0.25, 0.25, 0, -1, 1);
	
}