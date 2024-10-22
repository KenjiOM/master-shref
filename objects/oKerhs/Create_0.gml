global.vivo = true
global.vida = 3
velocidade = 1
global.x_kerhs = oKerhs.x
global.y_kerhs = oKerhs.y - 42
global.c = 0
global.veloc = 2
itens = 0
window_set_cursor(cr_default)
nabucodonosor = ds_list_create()

//Dicionário pras comidas
inventario = ds_list_create()
cru = ds_list_create()
crot = ds_list_create()
cozido = ds_list_create()
ds_list_add(inventario, cru)
ds_list_add(inventario, crot)
ds_list_add(inventario, cozido)

image_xscale = 0.5
image_yscale = 0.5

global.e = 0 // coisa do fogao 0 ou 1
tempocozinho = 0
teucozinho = 0
tmax_corte = 180
tmax_cozinho = 600