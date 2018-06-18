		.data
A:		.word 5	
B:		.word 3
C:		.word 5
		.text
__start:	lui $5, 0x1001
		lw $10, 0($5)
		lw $11, 4($5)
		lw $12, 8($5)
if: 		bne $10, $12, else
		addi $12, $0, 12
		sw $12, 8($5)
		j exit
else:		sub $10, $10, $11
		sw $10, 0($5)
exit:		addi $2, $0, 10
