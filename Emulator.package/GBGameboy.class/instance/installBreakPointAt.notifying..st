debug
installBreakPointAt:address notifying: anObject.
	mmu wb: address value: (GBBreakpointProxy newForGB: self andValue: (mmu rb: address) notify: anObject).