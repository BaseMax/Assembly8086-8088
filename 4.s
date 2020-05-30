.model tiny
.dosseg
.data

.code
.startup
  mov  ah,6
  mov al,2 ;lines to up
  mov ch,0
  mov cl,0
  mov dh,24
  mov dl,79
  mov bh,7
  int 10h
    mov    ah, 4Ch 
    int    21h
end
