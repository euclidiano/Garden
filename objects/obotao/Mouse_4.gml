if (alvo != noone)
{
    alvo.hp = 3;
	if (oGame.dinheiro >= 100)
	{
		oGame.dinheiro -= 100;
		alvo.ativo = true;
		alvo.estado = PlotState.VAZIO
		instance_destroy();
	}	
	else 
	{
	oShop.semSaldo = true;	  
}

}