// Define a velocidade de movimento
var _velocidade = 4;

// Calcula quanto vai se movimentar baseado nas teclas apertadas
var _tecla_h = (keyboard_check(vk_right) || keyboard_check(ord("D"))) - (keyboard_check(vk_left) || keyboard_check(ord("A")));
var _tecla_v = (keyboard_check(vk_down) || keyboard_check(ord("S"))) - (keyboard_check(vk_up) || keyboard_check(ord("W")));

// Movimento Horizontal com checagem de colisão
if (_tecla_h != 0) {
    // Se não houver parede no próximo pixel, ele se move
    if (!place_meeting(x + (_tecla_h * _velocidade), y, obj_parede)) {
        x += _tecla_h * _velocidade;
    }
}

// Movimento Vertical com checagem de colisão
if (_tecla_v != 0) {
    // Se não houver parede no próximo pixel, ele se move
    if (!place_meeting(x, y + (_tecla_v * _velocidade), obj_parede)) {
        y += _tecla_v * _velocidade;
    }
}