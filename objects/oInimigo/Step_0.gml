if (oEspanta.ativo == true)
{
    direction = point_direction(x, y, oEspanta.x, oEspanta.y);
}
else
{
    direction = point_direction(x, y, alvo.x, alvo.y);
}

if oGame.t_min < 1
{
	 speed =2
}