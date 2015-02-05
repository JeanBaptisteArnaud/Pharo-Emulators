memory access
rb: address
	^(self at: address - self beginValue) value.