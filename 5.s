.model tiny
.dosseg
.data
table db 9,8,7,6,5,4,3,2,1,0
.code
.startup
lea BX,table
mov AL,5
xlat
;al=table[5]
    mov    ah, 4Ch 
    int    21h
end
