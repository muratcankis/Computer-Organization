		.data
A:		.space 1600
		.text
__start:	lui $5, 0x1001
		ori $5, $5, 0x0000
		lw $6, 188($5)
		addi $6, $0, 1
		sw $6, 188($5)	
		
exit:		done
