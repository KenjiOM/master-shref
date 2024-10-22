/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if keyboard_check_pressed(ord("E")) {
	if ds_list_empty(cru) && ds_list_empty(crot) && ds_list_empty(cozido) {
		if !instance_exists(oTomas) {
			ds_list_add(cru, "tomas")
			instance_create_depth(oKerhs.x - 5, oKerhs.y - 42, -100, oTomas)
		}
	}
}

if !instance_exists(oButa) {
	instance_create_depth(oCaixotaErectusTomas.x, oCaixotaErectusTomas.y + 10, -100, oButa)
}
