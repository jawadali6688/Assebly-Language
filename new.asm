.model medium 

.stack 100h

.data 

.code 
    main proc

        mov dl, "J" 
        mov ah, dl

        mov ah, 2
        int 21h
        mov ah, 4ch
        int 21h


    main endp 

    end main