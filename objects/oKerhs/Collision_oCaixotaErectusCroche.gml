/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if keyboard_check(ord("E")) {
	if ds_list_empty(cru) && ds_list_empty(crot) && ds_list_empty(cozido) {
		if !instance_exists(oCroche) {
			ds_list_add(cru, "croche")
			instance_create_depth(oKerhs.x, oKerhs.y - 42, -100, oCroche)
		}
	}
}

if !instance_exists(oButa) {
	instance_create_depth(oCaixotaErectusCroche.x, oCaixotaErectusCroche.y - 25, -100, oButa)
}
