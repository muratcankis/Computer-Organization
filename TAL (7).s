		.data
i:		.word
A:		.space 256
B:		.space 256

		.text
__start:	lui $5, 0x1001
		lui $10, 0x1001
		lw $6, 0($5)
		add $6, $0, $0 #i=0
		addi $7, $0, 64 #for limit
		
for:		beq $6, $7, exit
		addi $6, $6, 1
		lw $8, 256($5) #A
		lw $9, 260($10) #B

if:		bgez $9, end_if
		add $8, $0, $9
		sw $8, 256($5)

end_if:		addi $5, $5, -4
		addi $10, $10, 4
		j for

exit:		addi $2, $0, 10
		syscall
		

		