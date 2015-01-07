debug
correspondingOPCode
	| op |
	op := mmu rb:(self pc value).
	^(opCodesTable at: (op + 1)) printString.