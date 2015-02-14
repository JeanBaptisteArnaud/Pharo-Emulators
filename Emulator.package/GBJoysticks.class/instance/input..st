updating
input: aValue  
	value := (value bitAnd: 48)
		bitOr: (aValue bitAnd: 15). 