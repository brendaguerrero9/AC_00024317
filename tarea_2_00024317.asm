org     100h

;EJERCICIO 1
;CARNET 00024317 = 2+4+3+1+7 = 17/5 = 3.4 = 3

mov     ax,0000h
add     ax, 2d
add     ax, 4d
add     ax, 3d
add     ax, 1d
add     ax, 7d
mov     ax, 5d

;Comentario de 3 : HAY SALUD
mov     cl, "H"
mov     [203h], cl

mov     cl, "A"
mov     [204h], cl

mov     cl, "Y"
mov     [205h], cl

mov     cl, "S"
mov     [207h], cl

mov     cl, "A"
mov     [208h], cl

mov     cl, "L"
mov     [209h], cl

mov     cl, "U"
mov     [20Ah], cl

mov     cl, "D"
mov     [20Bh], cl

int 20h

;EJERCICIO 2

