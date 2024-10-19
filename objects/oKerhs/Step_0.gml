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

if movex != 0 && movey != 0 {
	movex *= 0.7071
	movey *= 0.7071
}

//Move o player, o movex e movey é pra ele andar na msm velocidade na diagonal
x += movex * velocidade
y += movey * velocidade

instance_destroy(oButa)

if place_meeting(x, y, oTaubate) {
	if keyboard_check(ord("F")) {
		tempocozinho += 1
		if tempocozinho < tmax_corte {
			if !instance_exists(oBarraca) {
				instance_create_depth(oTaubate.x, oTaubate.y - 30, -100, oBarraca)
			}
		} else {
			instance_destroy(oBarraca)
			oCroche.sprite_index = sChe
			tempocozinho = 0
		}
	} else {
		instance_destroy(oBarraca)
		tempocozinho = 0
	}
} else {
	instance_destroy(oBarraca)
	tempocozinho = 0
}

if !instance_exists(oItens) {
	ds_list_clear(inventario)
}