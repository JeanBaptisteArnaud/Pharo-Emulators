tools
setWordMemoryAtSpForCall: arg
	self sp decrement.
	mmu wb: (self sp value)  value: (arg>>8).
	self sp decrement.
	mmu wb: (self sp value)  value: (arg bitAnd: 255).
	