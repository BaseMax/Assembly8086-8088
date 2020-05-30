.model tiny
.dosseg
.data
path db 'c:3.dat',0
buffer db 1000 dup(?)
han dw ?
_size dw ?
.code
.startup
  lea dx,path
  mov al,0
  mov ah,3dh
  int 21h
  jc error
  mov han,ax
  mov ah,42h
  mov al,2
  mov bx,han
  mov cx,0
  mov dx,0
  int 21h
  jc error
  mov _size,ax
  mov ah,42h
  mov al,0
  mov cx,0
  mov dx,0
  int 21h
  jc error
  mov ah,3fh
  mov bx,han
  mov cx,_size
  lea dx,buffer
  int 21h
  jc error
  mov bx,han
  mov ah,3eh
  int 21h
  jc error
  mov cx,20
  mov bx,dx
L1:
    mov ah,[bx]
    mov [bx+40],ah
    inc bx
    dec cx
    JNZ  L1
  
error:    
    mov    ah, 4Ch 
    int    21h
end
