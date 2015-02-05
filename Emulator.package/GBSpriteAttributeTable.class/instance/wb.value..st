memory access
wb: address value: value
	^(self at: address - self beginValue) value: value.
