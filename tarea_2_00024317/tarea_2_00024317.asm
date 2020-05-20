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

;EJERCICIO 3
                    mov     ax, 0000h 
                    mov     bx, 0000h
                    mov     cx, 0000h
                    mov     ax, 0d
                    mov     di, 0d
                    mov     cx, 0015d
                    mov     dx, 1d

    fibonacci:      mov    [di + 220h], ax
    
                    inc     di
    
                    mov     bx,ax
                    add     ax, dx
                    mov     dx, bx

                    loop    fibonacci

;EJERCICIO 2
                mov     ax, 0000h
                mov     al, 2d
                mov     bx, 210h
                mov     cx, 2d
calculo:        mul     cx
                mov     [bx], ax
                cmp     ah, 00h; si es igual a 0 se te hace el segundo si es >0 hace primero
                ja      salto2
                je      salto1
salto2:        add     bx, 2h
                jmp     siguiente
salto1:        add     bx, 1h
siguiente:      cmp     bx, 21Fh; comprobar si es menor si no ahi temrina el bucle
                jb      calculo

int 20h


