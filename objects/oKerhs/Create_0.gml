window_set_size(1280, 720)
window_center()

global.vivo = true
global.vida = 3
velocidade = 1
global.x_kerhs = oKerhs.x
global.y_kerhs = oKerhs.y - 42
global.c = 0
global.veloc = 2
itens = 0
inventario = ds_list_create()
comidas = ["cebola", "tomate"]
fogao = []

image_xscale = 0.5
image_yscale = 0.5

tempocozinho = 0
tmax_corte = 300
tmax_cozinho = 600