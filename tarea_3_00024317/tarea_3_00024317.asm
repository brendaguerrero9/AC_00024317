org 	100h

section .text

	call 	texto	
	call 	cursor
	call 	frase
    call    frase2
    call    frase3
	call	kbwait

	int 	20h

texto:	mov 	ah, 00h
	mov	al, 03h
	int 	10h
	ret

cursor: mov	ah, 01h
	mov 	ch, 00000000b
	mov 	cl, 00001110b
		;   IRGB
	int 	10h
	ret

kbwait: mov 	ax, 0000h
	int 	16h
	ret
;Frase 1
w_char:	mov 	ah, 09h
	mov 	al, cl
	mov 	bh, 0h
	mov 	bl, 00001111b
	mov 	cx, 1h
	int 	10h
	ret

m_cursr:mov 	ah, 02h
	mov 	dx, di  
	mov 	dh, 3d 
	mov 	bh, 0h
	int 	10h
	ret

frase:	mov 	di, 3d
loop:	mov 	cl, [msg+di-3d]
	call    m_cursr
	call 	w_char
	inc	di
	cmp 	di, len
	jb	loop
	ret

;Frase 2
w_chart:	mov 	ah, 09h
	mov 	al, cl
	mov 	bh, 0h
	mov 	bl, 00001111b
	mov 	cx, 1h
	int 	10h
	ret

m_cursrr:mov 	ah, 02h
	mov 	dx, di  
	mov 	dh, 9d 
	mov 	bh, 0h
	int 	10h
	ret

frase2:	mov 	di, 38d
loop2:	mov 	cl, [fra+di-38d]
	call    m_cursrr
	call 	w_chart
	inc	di
	cmp 	di, len2
	jb	loop2
	ret


;Frase 3
w_char3:	mov 	ah, 09h
	mov 	al, cl
	mov 	bh, 0h
	mov 	bl, 00001111b
	mov 	cx, 1h
	int 	10h
	ret

m_cur3:mov 	ah, 02h
	mov 	dx, di  
	mov 	dh, 15d 
	mov 	bh, 0h
	int 	10h
	ret

frase3:	mov 	di, 3d
loop3:	mov 	cl, [fra3+di-3d]
	call    m_cur3
	call 	w_char3
	inc	di
	cmp 	di, len3
	jb	loop3
	ret

section .data
msg	db 	"My milkshake brings all the boys to the yard :3"
len 	equ	$-msg+3d
fra	db 	"And they're like, it's better than yours"
len2 	equ	$-fra+38d
fra3	db 	"I can teach you, but I have to charge"
len3 	equ	$-fra+3d