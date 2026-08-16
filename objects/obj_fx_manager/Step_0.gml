// Conta quantas moedas existem na fase neste exato momento
var moedas_restantes = instance_number(obj_moeda);

// Se não sobrou nenhuma moeda na fase
if (moedas_restantes <= 0) {
    // Verifica se existe uma próxima room depois da atual
    if (room_exists(room_next(room))) {
        // Se tiver, avança para a próxima fase normal
        room_goto_next();
    } else {
        // Se esta era a última fase do jogo, vai direto para a Tela de Vitória!
        room_goto(rm_vitoria); 
    }
}