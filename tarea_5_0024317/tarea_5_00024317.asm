org 	100h

section .text

	call 	graf	

	xor 	si, si
	xor 	di, di

	mov	    si, 150d 
	mov 	di, 35d
	call 	diagonal

    mov	    si, 145d 
	mov 	di, 40d 
	call 	diagonal1

    mov	    si, 160d 
	mov 	di, 90d 
	call 	diagonal2

    mov	    si, 155d 
	mov 	di, 85d 
	call 	diagonal3

    mov	    si, 150d 
	mov 	di, 100d 
	call 	diagonal

    mov	    si, 145d 
	mov 	di, 105d 
	call 	diagonal1

    mov	    si, 160d 
	mov 	di, 155d 
	call 	diagonal2

    mov	    si, 155d 
	mov 	di, 150d 
	call 	diagonal3

	mov 	si, 100d 
	mov 	di, 35d 
	call 	horizontal

    mov 	si, 100d 
	mov 	di, 165d 
	call 	horizontal

    mov 	si, 110d 
	mov 	di, 160d 
	call 	horizontal2

    mov 	si, 110d 
	mov 	di, 105d 
	call 	horizontal2

    mov 	si, 110d 
	mov 	di, 40d 
	call 	horizontal2

    mov 	si, 110d 
	mov 	di, 95d 
	call 	horizontal2

    mov	    si, 110d 
	mov 	di, 105d 
	call 	vertical1

    mov	    si, 110d 
	mov 	di, 40d 
	call	vertical1

    mov	si, 100d 
	mov 	di, 35d 
	call 	vertical2

    mov	    si, 160d 
	mov 	di, 45d 
	call 	vertical3

    mov	    si, 160d 
	mov 	di, 110d 
	call 	vertical3

    

     mov	si, 155d 
	mov 	di, 50d
	call 	vertical4

     mov	si, 155d 
	mov 	di, 115d 
	call 	vertical4
	

	call 	kb		

	int 	20h

graf:mov	ah, 00h
	mov	al, 13h
	int 	10h
	ret

pixel:	mov	ah, 0Ch
	mov	al, 1011b
	int 	10h
	ret

horizontal: 
lupi_horizontal:	mov 	cx, 0d 
	add 	cx, si
	mov	dx, di 
	call 	pixel
	inc 	si
	cmp 	si, 150d
	jne 	lupi_horizontal
	ret

horizontal2: 
lupi_horizontal2:	mov 	cx, 0d 
	add 	cx, si
	mov	dx, di 
	call 	pixel
	inc 	si
	cmp 	si, 145d
	jne 	lupi_horizontal2
	ret

vertical2:
lupi_vertical2:	mov 	cx, si 
	mov	dx, 0d 
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 165d
	jne 	lupi_vertical2
	ret
    
vertical3:   mov 	cx, si
lupi_vertical3:	  
	mov	dx, 0d 
	add 	dx, di
	call 	pixel
	inc 	di
    inc     si
	cmp 	si, 205d
	jne 	lupi_vertical3
	ret

vertical1:   mov 	cx, si
lupi_vertical1:	  
	mov	dx, 0d 
	add 	dx, di
	call 	pixel
	inc 	di
    inc     si
	cmp 	si, 165d
	jne 	lupi_vertical1
	ret

vertical4:   mov 	cx, si
lupi_vertical4:	  
	mov	dx, 0d 
	add 	dx, di
	call 	pixel
	inc 	di
    inc     si
	cmp 	si, 190d
	jne 	lupi_vertical4
	ret

diagonal:
lupi_diagonal:	mov 	cx, 0d 
	mov	    dx, 0d 
	add 	dx, di
    add 	cx, si
	call 	pixel
	inc 	di
    inc     si
	cmp 	si, 160d
	jne 	lupi_diagonal
    
	ret

diagonal2:
lupi_diagonal2:	mov 	cx, 0d 
	mov	    dx, 0d 
	add 	dx, di
    add 	cx, si
	call 	pixel
	inc 	di
    sub     si,1d
	cmp 	si, 149d
	jne 	lupi_diagonal2
    
	ret

diagonal1:
lupi_diagonal1:	mov 	cx, 0d 
	mov	    dx, 0d 
	add 	dx, di
    add 	cx, si
	call 	pixel
	inc 	di
    inc     si
	cmp 	si, 155d
	jne 	lupi_diagonal1
    
	ret

diagonal3:
lupi_diagonal3:	mov 	cx, 0d 
	mov	    dx, 0d 
	add 	dx, di
    add 	cx, si
	call 	pixel
	inc 	di
    sub     si,1d
	cmp 	si, 144d
	jne 	lupi_diagonal3
    
	ret

kb: 	mov	ah, 00h
	int 	16h
	ret

section .data