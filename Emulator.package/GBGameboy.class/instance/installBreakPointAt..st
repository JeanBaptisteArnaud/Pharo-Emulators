debug
installBreakPointAt: address
	mmu wb: address value: (GBBreakpointProxy newForGB: self andValue: (mmu rb: address)).