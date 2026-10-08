if (1+1 ==2){

   spawn_timer++;
    
    if (spawn_timer >= tempo_spawn)
    {
        spawn_timer = 0;
        
        // ===== SPAWN =====
        var lado = irandom(3);
        var margem = 100;
        var rand_x;
        var rand_y;

        switch (lado)
        {
            case 0:
                rand_x = -margem;
                rand_y = random(room_height);
            break;

            case 1:
                rand_x = room_width + margem;
                rand_y = random(room_height);
            break;

            case 2:
                rand_x = random(room_width);
                rand_y = -margem;
            break;

            case 3:
                rand_x = random(room_width);
                rand_y = room_height + margem;
            break;
        }

        for (var i = 0; i < 1; i++)
        {
            instance_create_layer(rand_x, rand_y, "inimigo", oInimigo);
        }
    }
}