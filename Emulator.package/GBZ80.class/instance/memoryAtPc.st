tools
memoryAtPc
	| value |
	value := mmu rb: (self pc value).
	self incPc.
	^value