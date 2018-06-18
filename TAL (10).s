		.data
X:		.word 50
Y: 		.word 1024
		
		.text
__start:
		lui $5, 0x1001
		lw $3, 0($5)
		lw $4, 4($5)
		sub $5, $4, $3
		bltz $5, etiket
		add $5, $3, $0
		add $3, $4, $0
		add $4, $5, $0
etiket:		div $3, $4
		mfhi $5
		beq $5, $0, exit
		add $3, $4, $0
		add $4, $5, $0
		beq $0, $0, etiket
exit: 		done
	
	 
	
