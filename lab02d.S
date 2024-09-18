.section .text
.globl lab02d

lab02d:
	ADRP X1, myvalue
	ADD X1, X1, :lo12:myvalue
	ADD X0, X0, #1000
	STUR X0, [X1]
	MOV X0, X1
	BR X30

.section .data
.align 3

myvalue:
.quad 0
