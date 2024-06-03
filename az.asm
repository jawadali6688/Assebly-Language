.model small
.stack 100h
.data
    num db  65 
.code 
main proc
    mov ax, @data
    mov ds, ax
    mov cx, 26   
printing_num:
  mov dl, num
  mov ah, 2
  int 21h
  add num, 1
loop printing_num
int 21h
mov ah, 4ch
int 21h
main endp
end main
