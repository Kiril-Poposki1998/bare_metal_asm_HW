mov ah, 0x0E
mov al, 0x41

start:
	int 0x10
	inc al
	cmp al,0x5A
	jg exit
	jmp start
exit:
	jmp $

times 510-($-$$) db 0
dw 0xAA55 ; magic MBR number
