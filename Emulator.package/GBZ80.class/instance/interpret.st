public
interpret
	| op |
	op := mmu rb:(self pc value).
	self incPc.
	debugCount := debugCount + 1.
	^(opCodesTable at: (op + 1)) interpret. 
	