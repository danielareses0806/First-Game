// Define a cor e a fonte do título (opcional, usa a padrão se não tiver)
draw_set_color(c_yellow);
draw_set_halign(fa_center); // Centraliza o texto no eixo X
draw_set_valign(fa_middle); // Centraliza o texto no eixo Y

// Pega o centro da tela automaticamente
var cx = room_width / 2;
var cy = room_height / 2;

// Desenha o Título do Jogo
draw_text(cx, cy - 80, "MEU JOGO RETRO");

// Desenha a instrução para o jogador
draw_set_color(c_white);
draw_text(cx, cy + 20, "Pressione ESPACO para Jogar");

// Reseta o alinhamento para não bugar outros textos do jogo
draw_set_halign(fa_left);
draw_set_valign(fa_top);