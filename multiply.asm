.model small
.stack 100h
.data
.code
   main proc
        mov ax, @data
        mov ds, ax
        
        mov bl, 4          ; first number is 4
        mov cl, 2          ; second number is 2
        mov al, bl        
        mul cl       ; 4 * 2 = 8     
        
        add al, 30h        
        mov dl, al        
        mov ah, 2         DL
        
        mov ah, 4ch        
        int 21h
   main endp
                   ; author-Jawad-Khan
   end main
