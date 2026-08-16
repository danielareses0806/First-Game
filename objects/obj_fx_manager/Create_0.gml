// --- Configurando o Sistema de Partículas ---
// Criamos um sistema global para gerenciar as partículas
global.particle_sys = part_system_create();
// Garantimos que ele fique "por cima" de tudo
part_system_depth(global.particle_sys, -1000); 

// --- Configurando o Tipo de Partícula (A "Moeda/Estrela") ---
global.part_moeda = part_type_create();

// Formato e Tamanho (vamos usar um ponto pequeno ou um quadrado simples)
part_type_shape(global.part_moeda, pt_shape_circle); // Forma redonda
part_type_size(global.part_moeda, 0.1, 0.3, -0.01, 0); // Começa pequena, cresce um pouco, depois some
part_type_color2(global.part_moeda, c_yellow, c_orange); // Cor amarela piscando para laranja
part_type_alpha2(global.part_moeda, 1, 0); // Começa visível (alpha 1), termina invisível (alpha 0)

// Movimento (para "explodir" para fora)
part_type_speed(global.part_moeda, 1, 3, -0.05, 0); // Velocidade inicial aleatória entre 1 e 3, desacelera
part_type_direction(global.part_moeda, 0, 359, 0, 0); // Direção aleatória para qualquer lado (360 graus)
part_type_gravity(global.part_moeda, 0.1, 270); // Gravidade puxando para baixo (270 graus)

// Vida da Partícula
part_type_life(global.part_moeda, 20, 40); // Dura entre 20 e 40 frames (menos de 1 segundo)