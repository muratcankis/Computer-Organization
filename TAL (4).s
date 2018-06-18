		.data
A:		.word 3 #6
B:		.word 4 #7
C:		.word 5 #8
		.text
__start:	lui $5, 0x1001
		lw $6, 0($5)
		lw $7, 4($5)
		lw $8, 8($5)
		addi $10, $0, 2 #if için
if:		bne $6, $10, else
		add $6, $6, $7
		add $6, $6, $8
		sw $6, 0($5)
		j exit
else:		sub $7, $6, $8
		sw $7, 4($5)
exit:		done