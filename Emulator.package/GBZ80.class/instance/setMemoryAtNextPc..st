tools
setMemoryAtNextPc: arg
	mmu wb: ( self wordMemoryAtPc) value: arg.
	