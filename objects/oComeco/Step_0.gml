/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if position_meeting(mouse_x, mouse_y, oComeco) {
	window_set_cursor(cr_handpoint)
	if mouse_check_button_pressed(mb_left) {
		room_goto_next()
	}
} else {
	window_set_cursor(cr_default)
}