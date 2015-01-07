tools
setMemoryAtFFC: arg
	^mmu wb: (16rff00 + self c value) value: arg.
	