[ org 0x7C00 ]

mov ah, 0x0E
str: db "Hello from the booting process", 0x0
mov al, [str]

start:
	int 0x10
	inc al
	cmp al, 0x0
	je exit
	jmp start

exit:
	jmp $

times 510-($-$$) db 0
dw 0xAA55 ; magic MBR number
