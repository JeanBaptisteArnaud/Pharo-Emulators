slow memory access
wb: aAdrress value: aValue

	^value := (value bitAnd: 2r00111111) bitOr: (aValue bitAnd: 48).
	