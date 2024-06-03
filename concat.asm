.model small
.stack 100h
.data
    str1   db 'Hello, ', 0
    str2   db 'World!', 0
    result db 50 dup('$')

.code
main proc
                mov   ax, @data
                mov   ds, ax
                mov   es, ax
                lea   si, str1
                lea   di, result
                call  copy_string
                lea   si, str2
                call  copy_string
                lea   dx, result
                mov   ah, 09h
                int   21h
                mov   ah, 4Ch
                int   21h
main endp
copy_string proc
    copy_loop:  
                lodsb
                or    al, al
                jz    copy_end
                stosb
                jmp   copy_loop
    copy_end:   
                ret
copy_string endp
end main
