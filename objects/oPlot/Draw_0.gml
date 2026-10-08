if (ativo)
{
    draw_self();
	
	var _hp =  c_white;
	if hp < 2 
	{_hp = c_red }
	draw_text_outlined(x,y+5,c_black,_hp,hp,1,1,0)
}
