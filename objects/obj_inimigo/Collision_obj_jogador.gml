// 1. Perde 1 vida
global.vidas -= 1;

// 2. Manda o jogador para a posição inicial com recuo para não bugar tirando vida em loop
other.x = other.xstart - 40;
other.y = other.ystart;

// Efeito visual de dano no jogador
other.image_blend = c_red;
other.alarm[0] = 10;

// 3. Verifica se as vidas acabaram
if (global.vidas <= 0) {
    // Se acabou as vidas, reinicia o jogo
    room_restart();
}