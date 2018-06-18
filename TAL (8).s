		.data
A:		.word 1:10
B:		.word 2:10
C:		.space 40
		.text
__start:	lui $5, 0x1001
		addi $10, $0, 0
		addi $11, $0, 10
for:		beq $10, $11, exit
		lw $7, 0($5)
		lw $8, 40($5)
		lw $9, 80($5)
		add $9, $8, $7
		sw $9, 80($5)
		addi $5, $5, 4
		addi $10, $10, 1
		j for
exit:		done
		
		
		
		
		