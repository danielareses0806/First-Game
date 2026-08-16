// Centraliza o texto na tela
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Desenha a mensagem de Game Over
draw_set_color(c_red);
draw_text(room_width / 2, room_height / 2 - 30, "GAME OVER");

// Desenha a instrução para reiniciar
draw_set_color(c_white);
draw_text(room_width / 2, room_height / 2 + 20, "Pressione ESPAÇO para tentar de novo");

// Reseta o alinhamento para não bagunçar outros textos
draw_set_halign(fa_left);
draw_set_valign(fa_top);