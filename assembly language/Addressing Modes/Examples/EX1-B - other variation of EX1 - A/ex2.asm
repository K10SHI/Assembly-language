;ex1b.asm
;variation of ex1a

org 100h

mov ax, 0b800h
mov ds, ax
mov di, (160*12) + (4*2)

mov word[di],   8741h
mov word[di+2], 8742h
mov word[di+4], 8743h

mov word[di+6], 8744h
int 20h

ret




