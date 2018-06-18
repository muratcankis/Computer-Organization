		.data
A:		.word 2147483647
B:		.word 2147483647
		.text
__start:	lui $5, 0x1001
		lw $8, 0($5)
		lw $9, 4($5)
		addu $10, $8, $9
		xor $11, $8, $9
		bltz $11, ofyok
		xor $11, $10, $8
		bgtz $11, ofyok
		addi $4, $0, 1
		j exit

ofyok:		add $4, $0, $0

exit:		done