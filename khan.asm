.model small 
.stack 100h
.data
    wish db "Happy BirthDay Jawad $"
.code 
    main proc
    mov ax, @data
    mov ds, ax
    lea dx, wish
    mov cx, 10
    my_loop:
        mov ah, 9
        lea dx, wish
        int 21h
        mov dx, 13
        mov ah, 2
        int 21h
        mov dx, 10
        mov ah, 2
        int 21h
    loop my_loop
    mov ah, 4ch
    int 21h
    main endp
    end main
