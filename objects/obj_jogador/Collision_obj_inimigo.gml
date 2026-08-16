// 1. Perde apenas 1 vida
global.vidas -= 1;

// 2. Manda o jogador para o início com o recuo de -40 pixels
x = xstart - 40;
y = ystart;

// 3. Deixa o próprio jogador vermelho por um instante
image_blend = c_red;
alarm[0] = 10;

// 4. Se as vidas chegarem a zero, reinicia a fase
if (global.vidas <= 0) {
    room_restart();
}