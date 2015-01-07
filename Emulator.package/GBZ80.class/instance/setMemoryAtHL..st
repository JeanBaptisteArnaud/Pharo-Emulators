tools
setMemoryAtHL: arg
	| value |
	value := mmu wb: (self hl value) value: arg.
	^value