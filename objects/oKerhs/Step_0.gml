var movex = 0
var movey = 0

if keyboard_check(ord("D")) {
	movex = 1
}

if keyboard_check(ord("W")) {
	movey = -1
}

if keyboard_check(ord("S")) {
	movey = 1
}

if keyboard_check(vk_shift) {
	velocidade = 2
	image_speed = 1.5
} else {
	velocidade = 1
	image_speed = 1
}

if keyboard_check(ord("A")) {
	movex = -1
	image_xscale = -1
} else {
	image_xscale = 1
}

if movex == 1 or movex == -1 or movey == 1 or movey == -1 {
	sprite_index = sKerhsD
} else {
	sprite_index = sKerhsF
}

if keyboard_check(ord("A")) && keyboard_check(ord("D")) {
	movex = 0
}

if movex != 0 && movey != 0 {
	movex *= 0.7071
	movey *= 0.7071
}

// Move o player, o movex e movey é pra ele andar na msm velocidade na diagonal
x += movex * velocidade
y += movey * velocidade

instance_destroy(oButa)

// Ação de cortar
if ds_list_find_value(cru, 0) == "croche" {
	taubatecorte(oCroche, sChe)
} else {
	taubatecorte(oTomas, sMas)
}

if !instance_exists(oRcrux) {
	ds_list_clear(cru)
	ds_list_clear(crot)
	ds_list_clear(cozido)
}
if ds_list_empty(crot) && ds_list_empty(cru) && ds_list_empty(cozido) {
	instance_destroy(oRcrux)
}


// começo do cozinho, add dos alimentos
if place_meeting(x, y, oFogao) {
	if !ds_list_empty(crot) {
			if keyboard_check_pressed(ord("F")) {
				if ds_list_size(nabucodonosor) < 2 {
					ds_list_add(nabucodonosor, ds_list_find_value(crot, 0))
					ds_list_clear(crot)
				}
			}
	}
}

if ds_list_size(nabucodonosor) == 2 {
	global.e = 1
}
if global.e == 1 && teucozinho < tmax_cozinho {
	teucozinho++
	if !instance_exists(oBarraca){
		instance_create_depth(oFogao.x, oFogao.y - 40, -100, oBarraca)
		oBarraca.image_speed = 0.25
	}
	show_debug_message(teucozinho)
}
if teucozinho == tmax_cozinho {
	show_debug_message("ta pronto hean")
	ds_list_clear(nabucodonosor)
	ds_list_add(cozido, "comidinha la ele")
	global.e = 0
	teucozinho = 0
	instance_create_depth(oFogao.x, oFogao.y - 40, -100, oJoe)
}

