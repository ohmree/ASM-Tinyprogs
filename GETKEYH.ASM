; this is a demo souce to show how to get a key
; press through the hardware.
; used in game programming.
; http://www.cybertrails.com/~fys/index.html
;
Dosseg
.model medium, basic
.286
.stack
.code
Even
           public    getkeyh            ; make getkeyh public
getkeyh    proc far basic uses bp dx    ; save registers

           in   al,60h
           xchg dx,ax
           xor  ax,ax                   ; assume no key
           test dl,10000000b
           jnz  short getkeyhD
           mov  al,dl
getkeyhD:  ret
getkeyh    endp                         ; end of procedure
           end                          ; end of assembly code
