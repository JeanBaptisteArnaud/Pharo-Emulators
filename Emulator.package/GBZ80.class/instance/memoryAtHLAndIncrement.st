tools
memoryAtHLAndIncrement
	| value |
	value := mmu rb: (self hl value).
	self hl increment.
	^value