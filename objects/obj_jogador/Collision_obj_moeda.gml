// 1. Adiciona o ponto na variável global
global.pontos += 1;

// 2. Destroi a moeda que foi coletada
with (other) {
    instance_destroy();
}

// 3. Efeito simples: muda a cor do jogador para amarelo por um instante e programa para voltar ao normal
image_blend = c_yellow; 
alarm[0] = 10; // O alarme vai contar 10 quadros (frames)


// --- NOVO: Efeito de Partículas ---
// Cria a explosão no lugar exato da moeda
// x e y são as coordenadas da moeda que está sendo destruída
part_particles_create(global.particle_sys, x, y, global.part_moeda, 10); // Cria 10 partículas de uma vez
// ----------------------------------


// 4. Efeito visual no jogador (pisca em amarelo)
image_blend = c_yellow; 
alarm[0] = 10;