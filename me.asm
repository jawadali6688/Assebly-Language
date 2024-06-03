.model small
.stack 100h 
.data 
    var1 db "Jawad$"
    var2 db "Khan$"


.code 

    main proc

    mov ax, @data
    
    mov ds, ax

    ; lea dx, var1
    lea dx, var1

    mov ah, 9

    int 21h


    mov dx, 10
    mov ah, 2
    int 21h
    mov dx, 13
    mov ah, 2
    int 21h

    lea dx, var2
    mov ah, 9
    
    int 21h
    mov ah, 4ch

    int 21h




    

    main endp

    end main
