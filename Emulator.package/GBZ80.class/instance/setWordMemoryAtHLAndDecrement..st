tools
setWordMemoryAtHLAndDecrement: arg
	| value |
	value := mmu ww: (self hl value) value: arg.
	self hl decrement.
	^value