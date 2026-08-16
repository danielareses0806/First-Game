// Se ele for bater em uma parede na direção em que está andando...
if (place_meeting(x + hspeed, y, obj_parede)) {
    // Inverte a direção (se era 2 vira -2, se era -2 vira 2)
    hspeed = -hspeed;
}

// Se passar do limite esquerdo ou direito da fase, inverte a direção
if (x < 32 || x > room_width - 32) {
    hspeed = -hspeed;
}


// 1. Acha a moeda mais próxima de mim
var moeda_perto = instance_nearest(x, y, obj_moeda);

// 2. Se ainda existir alguma moeda na fase, vai atrás dela!
if (moeda_perto != noone) {
    // move_towards_point faz o inimigo andar na direção da moeda com velocidade 2
    move_towards_point(moeda_perto.x, moeda_perto.y, 2);
} else {
    // Se não tiver mais nenhuma moeda, ele para
    speed = 0;
}