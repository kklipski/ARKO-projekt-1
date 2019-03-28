	.text
	.globl 	change

change:
	lbu		$t0,		0($a0)
	beqz		$t0,		exit
	bltu		$t0,		'[',		small
	bltu		$t0,		'{',		great
	addiu	$a0,		$a0,		1
	b 		change	
	
small:
	bltu		$t0,		'A',		next
	addiu 	$t0,		$t0,		' '
	sb		$t0,		($a0)
	addiu	$a0,		$a0,		1
	b		change
	
great:
	bltu		$t0,		'a',		next
	subiu 	$t0,		$t0,		' '
	sb		$t0,		($a0)
	addiu	$a0,		$a0,		1
	b		change
	
next:
	addiu	$a0,		$a0,		1
	b		change
	
exit:
	jr		$ra