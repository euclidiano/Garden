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
        var botao = instance_create_layer(x, y, "plantacao", obotaoE);
        botao.alvo = id;
    }
}