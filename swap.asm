.model small
.stack 100h
.data
.code
   main proc
        mov ax, @data
        mov ds, ax

        ; Increment example
        mov al, 5          ; Load AL with 5
        inc al             ; Increment AL (AL = AL + 1)
        
        ; Display the incremented value
        add al, 30h        ; Convert the result to ASCII
        mov dl, al
        mov ah, 2          ; Function 2 - Display character
        int 21h            ; Call DOS interrupt

        ; New line
        mov dl, 0Ah        ; Line Feed (LF)
        mov ah, 2
        int 21h
        mov dl, 0Dh        ; Carriage Return (CR)
        mov ah, 2
        int 21h

        ; Decrement example
        mov al, 5          ; Load AL with 5 again
        dec al             ; Decrement AL (AL = AL - 1)
        
        ; Display the decremented value
        add al, 30h        ; Convert the result to ASCII
        mov dl, al
        mov ah, 2          ; Function 2 - Display character
        int 21h            ; Call DOS interrupt

        ; Exit program
        mov ah, 4ch        ; Function 4Ch - Terminate process
        int 21h
   main endp
   end main
