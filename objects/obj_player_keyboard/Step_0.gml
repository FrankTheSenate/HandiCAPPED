/// @description Insert description here
// You can write your code in this editor

keyboardRight = keyboard_check(ord("D"))
keyboardLeft = keyboard_check(ord("A"))
keyboardJump = keyboard_check_pressed(vk_space)
keyboardJumpheld = keyboard_check(vk_space)
keyboardDown = keyboard_check(ord("S"))
keyboardDash = keyboard_check(vk_shift)
keyboardUp = keyboard_check(ord("W"))

scr_playerMovement(keyboardRight, keyboardLeft, keyboardJump, keyboardJumpheld, keyboardDown, keyboardDash, keyboardUp);
scr_playerDashing(keyboardRight, keyboardLeft, keyboardJump, keyboardJumpheld, keyboardDown, keyboardDash, keyboardUp);