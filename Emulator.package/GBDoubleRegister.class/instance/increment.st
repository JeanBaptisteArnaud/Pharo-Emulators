accessing
increment
	(register2 value = 255) 
		ifTrue:[register2 increment.
			register1 increment]
		ifFalse:[register2 increment].