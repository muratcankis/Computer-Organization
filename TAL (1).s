# TAL program to sum the squares of the first 20 integers
# $0  -- always 0
# $1  -- used for synthesis of MAL instructions
# $8  -- squares
# $9  -- condition
# $10 -- numintegers
# $11 -- temp
# $12 -- count

			.data
	numintegers:	.word	20
	result:		.word

			.text
	__start:	addi	$12, $0, 1
			addi	$8, $0, 0
			lui	$10, 0x1001
			ori	$10, $10, 0x0000
			lw	$10, 0($10)
	while:		sub	$9, $12, $10
			bgtz	$9, end
			mult	$12, $12
			mflo	$11
			add	$8, $8, $11
			addi	$12, $12, 1
			j	while
	end:		add	$4, $8, $0    		# put $8
			addi	$2, $0, 1   		# put $8 
			syscall				
			addi	$2, $0, 10              # done
			syscall
			

