%macro exit 1
    push ax        ; Save original ax

    mov al, %1      ; Set up parameters for exit
    mov ah, 4ch

    int 21h        ; Exit

    pop ax         ; Restore ax
%endmacro

%macro putchar 1
    push ax
    
    mov  al, %1
    int 29h

    pop ax
%endmacro

; in   al,60h
; xchg dx,ax
; xor  ax,ax                   ; assume no key
; test dl,10000000b
; jnz  short getkeyhD
; mov  al,dl
; getkeyhD:  ret
