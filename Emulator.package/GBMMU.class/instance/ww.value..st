as yet unclassified
ww: addr value: value
	self wb: addr value: (value bitAnd: 255).
	self wb: (addr + 1) value: (value>>8).
