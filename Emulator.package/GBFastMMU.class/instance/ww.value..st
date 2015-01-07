as yet unclassified
ww: addr value: value
	
	value isInteger not ifTrue: [Halt now.].
	self wb: addr value: (value bitAnd: 255).
	self wb: (addr + 1) value: (value>>8).
