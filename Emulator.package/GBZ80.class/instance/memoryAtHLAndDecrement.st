tools
memoryAtHLAndDecrement
	| value |
	value := mmu rb: (self hl value).
	self hl decrement.
	^value