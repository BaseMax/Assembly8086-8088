.model tiny
.dosseg  
.data
.code

.startup
  mov    ah, 2Ch
    int    21h
; result :
;  ah -day of week
;  ch 0-23 hour
;  cl 0-59 min
;  dh 0-59 sec
;  dl 0-99 .01 sec
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h
	mov    ah, 4Ch 
	int    21h

end

