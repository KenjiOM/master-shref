//Função pra seguir o Kerhs
function moqueca(){
	if global.distaK > 1 {
		move_towards_point(global.x_kerhs, global.y_kerhs, global.veloc)
	} else {
		speed = 0
	}
}