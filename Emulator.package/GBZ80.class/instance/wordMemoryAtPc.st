tools
wordMemoryAtPc
	| value |
	value := mmu rw: (self pc value).
	self incPc;incPc.
	^value