		.data
A:		.word 0:100
B:		.word 0:100
		
		.text
__start:	lui $5, 0x1001
		ori $5, $5, 0x0000
		add $8, $0, $0 #i=0
		addi $9, $0, 100 # for limit
		
for:		beq $8, $9, exit
		addi $8, $8, 2 #2 kere i++
		lw $6, 0($5) #A[i]
		lw $7, 400($5) #B[i]
if:		sub $9, $6, $7
		blez $9, else
		add $6, $6, $7
		sw $6, 0($5)
		addi $5, $5, 8 #2 kere i++ old. için
		j for
else:		add $7, $7, $6
		sw $7, 400($5)
		addi $5, $5, 8
		j for
exit:		addi $2, $0, 10
		syscall
