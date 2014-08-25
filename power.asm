global power

section .text
	power:
	; initialize eax to 1
	mov		eax, 1
	; esp+8 is the exponent
	mov		ebx, [esp+8]
	loop:
	; esp+4 is the base
	imul	eax, [esp+4]
	dec		ebx
	cmp		ebx, 0
	jnz		loop
	ret
