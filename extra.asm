.model small
.stack 100h 
.data
    hello_variable db "Hello World$", 0 ; storing value in variable 
.code
main proc
         mov ax, @data
         mov ds, ax
         lea dx, hello_variable ; loading value in dx register
         mov ah, 9
         int 21h
         mov ah, 4ch
         int 21h 
main endp
        ; author-Jawad-Khan
end main
