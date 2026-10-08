///reiniciar
if (keyboard_check_pressed(ord("R")))
{
game_restart()
}


if (t_min < 1)
{
    scalex += 0.001;
}
if (fim)
{
room_goto(Room2)
fim =false;
}


frame_anim += vel_anim;

if (frame_anim >= sprite_get_number(sGota)) {
    frame_anim = 0; // reinicia animação
}