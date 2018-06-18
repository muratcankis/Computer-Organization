		.data

A:		.word 0:64 #9
B:		.word 0:64 #10
		.text
__start:	lui $5, 0x1001
		add $6, $5, $0 #6=5
		add $11, $0, $0 #int i
		addi $12, $0, 64 #for kontrolü için
for:		beq $11, $12, exit #i<64 iken for çalýþýr...
		lw $8, 252($5)
		lw $9, 256($6)
		addi $5, $5, -4
		addi $6, $6, 4
		addi $11, $11, 1
		bgez $9, for
		add $9, $8, $0
		sw $9, 252($6)
		j for

exit: 		done
		
		
		
		
		
		