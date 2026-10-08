draw_self();
if(semSaldo)
{
	draw_text_outlined(x-50,y-20,c_black,c_white,textoSSaldo,1,1,0);
}

 if (desc)
{
	var placa_x = x-50
	var placa_y = y-50
	draw_set_colour(c_black);
	draw_text_outlined(placa_x+5, placa_y-20,c_black,c_white, desc_text,1,1,0);
	draw_set_colour(c_white);
}
