if (quantidade > 0 && global.segurando =="vazio")
{
	quantidade -= 1;
	global.segurando="semente1"
} else if (global.segurando == "semente1")
{
	global.segurando = "vazio"
	quantidade+= 1
}