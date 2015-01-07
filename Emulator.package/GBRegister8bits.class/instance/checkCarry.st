as yet unclassified
checkCarry
	
	(((previousValue < 16rf )) and: [(value > 16rf)])
		ifTrue:[flag setH] 
		ifFalse:[flag resetH].  