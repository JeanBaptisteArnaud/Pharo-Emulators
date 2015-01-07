tools
setMemoryAtHLAndDecrement: arg
	| value |
	value := mmu wb: (self hl value) value: arg.
	self hl decrement.
	^value