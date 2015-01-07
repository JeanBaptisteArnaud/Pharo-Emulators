tools
setMemoryAtHLAndIncrement: arg
	| value |
	value := mmu wb: (self hl value) value: arg.
	self hl increment.
	^value