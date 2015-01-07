debugSupport
rb: aValue
	^aValue < 16385 
		ifTrue:[self currentReadBank at: aValue + 1]
		ifFalse:[self currentWriteBank at: aValue - 16384 + 1].
	