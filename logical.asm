.model small
.stack 100h
.data
.code
   main proc
        mov ax, @data
        mov ds, ax

        ; Initialize values
        mov al, 5          ; First number
        mov bl, 10         ; Second number

        ; Swap values
        mov cl, al         ; Store AL (first number) in CL (temp)
        mov al, bl         ; Move BL (second number) to AL
        mov bl, cl         ; Move CL (temp, first number) to BL

        ; Exit program
        mov ah, 4ch        ; Function 4Ch - Terminate process
        int 21h
   main endp
   end main
