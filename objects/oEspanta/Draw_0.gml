if (ativo) {
	draw_self();
	
	var _hp =  c_white;
	if hp < 10
	{
		_hp = c_red 
	}
	draw_text_outlined(x,y+5,c_black,_hp,hp,1,1,0)
}

if (desc)
{
	var placa_x = x
	var placa_y = y-90
	
	draw_set_colour(c_black);
	draw_text_outlined(placa_x+5, placa_y+5,c_black,c_white, desc_text,1,1,0);
	draw_set_colour(c_white);
	
}

