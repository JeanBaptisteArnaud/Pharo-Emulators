optimize operation
returnValueAndDecrement
	| value |
	value := ((register1 value<<8) + register2 value).
	(register2 value = 0) 
		ifTrue:[register2 decrement.
			register1 decrement]
		ifFalse:[register2 decrement].
	^value