if  (global.segurando=="regador")
{
	regado=true;
	oRegador.tanque -= 10;
	global.segurando="vazio"
}


switch(estado) 
{
	case PlotState.VAZIO:
	    if (global.segurando=="semente1")
	    {
	        alarm[0] = regado ? 60*4 : 60*11;
	        estado = PlotState.SEMEADO;
			global.segurando="vazio"
	    }
	break;
        
	case PlotState.COLHIVEL:
		if !(global.segurando=="regador")
	    {
	    oGame.dinheiro += (regado) ? 50 :20;
	    estado = PlotState.VAZIO;
		regado=false;
		}
	break;
	
	
}

