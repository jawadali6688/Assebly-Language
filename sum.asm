.model small
.stack 100h 
.data 
.code 
   main proc        
        mov bl, 4  ; first number is 4
        mov cl, 2 ; second number is 2
        add bl, cl
        add bl, 48   ; ascii code
        mov dl, bl   
        mov ah, 2    ; output 4 + 2 
        int 21h
        mov ah, 4ch
        int 21h
   main endp
                   ; author-Jawad-Khan
   end main




   