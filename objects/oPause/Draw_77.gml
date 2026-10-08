//desativa alpha
gpu_set_blendenable(false);

//desenhar imagem congelada na tela enquanto pausado
if (pausado) 
{
	surface_set_target(application_surface);
		if(surface_exists(pauseSurf)) draw_surface(pauseSurf,0,0);
		//desenhar imagem congelada na tela enquanto pausado
		else
		{
			pauseSurf = surface_create(resL,resA);
			buffer_set_surface(pauseSurfBuffer,pauseSurf,0);		
		}
	surface_reset_target();

}

if (keyboard_check_pressed(ord("P")))
{
	if(!pausado)
	{
		pausado=true;
		
		//desativar toda instancia sem ser essa
		instance_deactivate_layer("Instances");
		
		//captura tela
		pauseSurf= surface_create(resL,resA);
		surface_set_target(pauseSurf);
			draw_surface(application_surface,0,0);
		surface_reset_target();
		
		//grava caso perca
		if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		pauseSurfBuffer= buffer_create(resL * resA * 4, buffer_fixed,1);
		buffer_get_surface(pauseSurfBuffer,pauseSurf,0);
	}
	else //despausa agora
	{
		pausado = false;
		instance_activate_layer("Instances");
		if (surface_exists(pauseSurf)) surface_free(pauseSurf);
		if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	}
}
//ativa alpha
gpu_set_blendenable(true);