		.data
A:		.word 137
		.text
__start:	lui $5, 0x1001
		lw $6, 0($5)
		addi $7, $0, 2 #bölen
		add $12, $0, $0
		add $13, $0, $0
		addi $4, $0, 1

while:		beq $6, $4, exit
		div $6, $7
		mflo $6
		mfhi $8

if:		beq $8, $0, else
		addi $13, $13, 1
		j while

else:		addi $12, $12, 1
		j while

exit: 		addi $13, $13, 1
		done