accessing
decrement
	(register2 value = 0) 
		ifTrue:[register2 decrement.
			register1 decrement]
		ifFalse:[register2 decrement].