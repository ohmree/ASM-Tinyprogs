%include "macros.inc"

; mov cx,256

; loopstart:
;     putchar cl

;     dec cx
;     jnz loopstart


; exit 0

loopstart:

in   al,60h

cmp  al,'\'
je   bye

putchar al

jmp loopstart

bye: exit 0
