   dosseg
.model small

.stack 100h 

.data 

  var1 db "Hello World$"

.code 

    main proc 

    ; mov dl, "J"
    ; mov ah, dl 

    ; mov ah, 2
    ; int 21h
    
    ; mov dl, "A"
    ; mov ah, dl 

    ; mov ah, 2
    
    ; int 21h 

    ; mov ah, 4ch 

    ; int 21h


    ; Taking input from user 

    ; mov ah, 1 
    ; int 21h
    ; mov dl, ah 
    ; mov ah, 2 

    ; int 21h  
    
    ; mov ah, 4ch  

    ; int 21h

    ; mov bl, 2
    ; mov cl, 1 

    ; add bl, cl 

    ; mov dl, bl 

    ; add dl, 48 

    ; mov ah, 2  
    ; int 21h  
    ; mov ah, 4ch  
    ; int 21h

    ; mov ah, 1 
    ; mov bl, ah


    ; int 21h

    ; mov ah, 1
    ; mov cl, ah
 

    ; int 21h

    ; add bl, cl
    ; add bl, 48
    ; int 21h

    ; mov dl, bl
    ; int 21h
    ; mov ah, 2

    ; int 21h

    ; mov ah, 4ch

    ; int 21h

    ; mov bl, 2 

    ; mov cl, 1 

    ; sub bl, cl

    ; add bl, 48

    ; mov dl, bl

    ; mov ah, 2

    ; int 21h 

    ; mov ah, 4ch

    ; int 21h


;     mov ah, 1
; int 21h
; mov bl, al    ; Store the first character in BL

; mov ah, 1
; int 21h
; mov cl, al    ; Store the second character in CL

; add bl, cl
; sub bl, 48    ; Convert ASCII to numeric

; mov dl, bl
; mov ah, 2
; int 21h       ; Print the result

; mov ah, 4ch
; int 21h    

    
    mov ax, @data

    mov ds, ax

    lea dx, var1

    mov ah, 9
    int 21h

    mov ah, 4ch
    int 21h


    main endp

    end main