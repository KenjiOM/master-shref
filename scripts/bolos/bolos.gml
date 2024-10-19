//Função pra comida ir na boquinha do joe. O "c" é só um contador pro player n ter q segurar o "E"
function bolos() {
	if keyboard_check(ord("E")) {
		if place_meeting(oKerhs.x, oKerhs.y, oJoe) {
			global.c = 1
		}
	}
	if global.c == 1 {
		global.veloc = 5
		global.x_kerhs = oJoe.x
		global.y_kerhs = oJoe.y
		if global.distaJoe < 4 {
			instance_destroy()
		}
	} else {
		global.x_kerhs = oKerhs.x 
		global.y_kerhs = oKerhs.y - 42
		global.veloc = 2
	}
}