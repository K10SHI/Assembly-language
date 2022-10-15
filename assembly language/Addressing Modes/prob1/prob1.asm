
;prob1.asm
;display your complete first name, with attributes
;at the center of the screen




org 100h                    ;this directive required for a simple 1 segment .com program.

mov ax, 0b800h              ;set AX to hexadecimal value of B800h.
        
mov ds, ax                  ;copy value of AX to DS.

mov di, (160*12) + (34*2)   ;set the screen to the center

mov bx[di], 4Dh             ;set bx[di] to ASCII code - HEX of 'M'= 4DH 
mov bx[di+1], 41h           ;set atributes using HEX CODE of red + blue = 41h

mov bx[di+2], 45h           ;set bx[di+2] to ASCII code - HEX of 'E'= 45H
mov bx[di+3], 40h           ;set atributes using HEX CODE of red + black = 40h

mov bx[di+4], 4Ch           ;set bx[di+4] to ASCII code - HEX of 'L'= 4CH
mov bx[di+5], 04h           ;set atributes using HEX CODE of black + red = 04h

mov bx[di+6], 56h           ;set bx[di+6] to ASCII code - HEX of 'V'= 56H
mov bx[di+7], 14h           ;set atributes using HEX CODE of blue + red = 14h
 
mov bx[di+8], 49h           ;set bx[di+8] to ASCII code - HEX of 'I'= 49H
mov bx[di+9], 0Eh           ;set atributes using HEX CODE of black + yellow = 0Eh

mov bx[di+10], 4Eh          ;set bx[di+10] to ASCII code - HEX of 'N'= 10H
mov bx[di+11], 30h          ;set atributes using HEX CODE of cyan + black = 30h

mov bx[di+12], 20h          ;set bx[di+12] to ASCII code - HEX of 'SPACE'= 20H

mov bx[di+14], 52h          ;set bx[di+14] to ASCII code - HEX of 'R'= 52H
mov bx[di+15], 04h          ;set atributes using HEX CODE of black + red = 04h

mov bx[di+16], 45h          ;set bx[di+16] to ASCII code - HEX of 'E'= 45H
mov bx[di+17], 51h          ;set atributes using HEX CODE of magenta + blue = 51h

mov bx[di+18], 59h          ;set bx[di+18] to ASCII code - HEX of 'Y'= 59H
mov bx[di+19], 03h          ;set atributes using HEX CODE of black + cyan = 03h
 


int 20h                     ;display character

ret                         ;returns to operating system.




