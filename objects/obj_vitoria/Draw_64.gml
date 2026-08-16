// Configura o estilo do texto
draw_set_color(c_yellow);
draw_set_halign(fa_center); // Centraliza no eixo X
draw_set_valign(fa_middle); // Centraliza no eixo Y

// Pega o centro da tela
var cx = room_width / 2;
var cy = room_height / 2;

// Desenha a mensagem de vitória
draw_text(cx, cy - 60, "PARABENS!");
draw_set_color(c_white);
draw_text(cx, cy, "Voce zerou todas as fases!");

// Instrução para voltar ao menu
draw_set_color(c_lime);
draw_text(cx, cy + 60, "Pressione ESPACO para voltar ao Menu");

// Reseta o alinhamento
draw_set_halign(fa_left);
draw_set_valign(fa_top);