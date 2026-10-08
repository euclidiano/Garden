draw_self()

draw_text_outlined(x+40,y+40,c_black,c_white,quantidade,1,1,0);

if (desc)
{
	var placa_x = x
	var placa_y = y-90
	
	draw_set_colour(c_black);
	draw_text_outlined(placa_x-10, placa_y-15,c_black,c_white, desc_text,1,1,0);
	draw_set_colour(c_white);
}
if (global.segurando=="semente1"){
draw_rectangle(x-50, y+50, x+50, y-50, true);
}