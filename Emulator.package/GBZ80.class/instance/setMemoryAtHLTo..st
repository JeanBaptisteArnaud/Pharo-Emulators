tools
setMemoryAtHLTo: value
	mmu wb: (self hl value) value: value.