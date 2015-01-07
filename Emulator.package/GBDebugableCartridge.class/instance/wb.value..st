debugSupport
wb: aValue value: anotherValue
	aValue < 16385 
		ifTrue:[self currentReadBank at: aValue + 1 put:  anotherValue ]
		ifFalse:[self currentWriteBank at: aValue - 16384 + 1 put:  anotherValue ].
