dosseg
.model small

.stack 100h

.data
    my_name db "Jawad Khan$"

.code 
 
    main proc

    mov ax, @data
    mov ds, ax
    lea dx, my_name
    mov cx, 10
        my_loop:
        mov ah, 9
        ; int 21h
        mov dl, 13
        mov ah, 2
        ; int 21h
        mov dl, 10
        mov ah, 2
        int 21h
    loop my_loop
    int 21h
    mov ah, 4ch
    int 21h
    main endp

    end main