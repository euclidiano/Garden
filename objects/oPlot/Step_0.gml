switch(estado)
{
	case PlotState.VAZIO:
		image_index = (regado) ? 5 : 0;
	break;
        
	case PlotState.SEMEADO:
		image_index = (regado) ? 3 : 1;
	break;
        
	case PlotState.COLHIVEL:
		image_index = (regado) ? 4 : 2;
	break;
	
	case PlotState.MORTO:
		image_index = 6
	break;
}

var _inst = instance_place(x, y, oInimigo);
if _inst != noone
{
    hp -= 1;
    instance_destroy(_inst);
}

if (ativo)
{
    if (hp <= 0)
    {
        ativo = false;
		estado = PlotState.MORTO
        var botao = instance_create_layer(x, y, "plantacao", obotao);
        botao.alvo = id;
    }
}

