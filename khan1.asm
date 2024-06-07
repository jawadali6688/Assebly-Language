.model small
.stack 100h
.data
   n_ame db "Hello World$"
.code
   
  main proc
  mov ax, @data
  mov ds, ax

  lea dx, n_ame
  mov ah, 9
  int 21h
  mov ah, 4ch
  int 21h
 


  main endp

  end main
