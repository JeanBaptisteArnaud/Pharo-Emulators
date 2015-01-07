tools
setMemoryAtFFPc: arg
	^mmu wb: (16rff00 + self memoryAtPc) value: arg.
	