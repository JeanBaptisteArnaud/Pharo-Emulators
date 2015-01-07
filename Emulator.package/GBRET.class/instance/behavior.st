as yet unclassified
behavior
	condition value ifTrue:[processor return.
		(202 = instructionValue) 
			ifTrue:[tick := 16] 
			ifFalse: [tick := 20].
		] ifFalse:[tick := 8.].