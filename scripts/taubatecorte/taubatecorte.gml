//Função de corte e mudar sprite da comida
function taubatecorte(objeto, sprite_corte){
	if place_meeting(x, y, oTaubate) {
		if !ds_list_empty(cru) {
			if keyboard_check(ord("F")) {
				tempocozinho++
				if tempocozinho < tmax_corte {
					if !instance_exists(oBarraca) {
						instance_create_depth(oTaubate.x, oTaubate.y - 30, -100, oBarraca)
					}
				} else {
					instance_destroy(oBarraca)
					ds_list_add(crot, ds_list_find_value(cru, 0))
					ds_list_clear(cru)
					objeto.sprite_index = sprite_corte
					tempocozinho = 0
				}
			} else {
				if global.e == 0 {
					instance_destroy(oBarraca)
				}
				tempocozinho = 0
			}
		}
	} else {
		if global.e == 0 {
			instance_destroy(oBarraca)
		}
		tempocozinho = 0
	}
}