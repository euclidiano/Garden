
if (alvo != noone)
{
    alvo.hp = 20;
	if (oGame.dinheiro >= 50)
	{
		oGame.dinheiro -= 50;
		alvo.ativo = true;
		instance_destroy();
	}
	else 
	{
	oShop.semSaldo = true;	  
}

}