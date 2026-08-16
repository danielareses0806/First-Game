// Se o jogador apertar espaço na tela de vitória, volta para o menu inicial
if (keyboard_check_pressed(vk_space)) {
    room_goto(rm_menu); // Certifique-se de que o nome da sua room de menu é rm_menu
}