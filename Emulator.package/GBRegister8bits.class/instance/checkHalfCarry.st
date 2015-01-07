as yet unclassified
checkHalfCarry
	((((previousValue - value) bitAnd: 16r0f ) + 
	(previousValue bitAnd: 16r0f)) > 16r0f)
		ifTrue:[flag setH]  
		ifFalse:[flag resetH]. 