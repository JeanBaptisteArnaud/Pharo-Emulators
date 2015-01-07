public
debugInterpret
	| op |
	op := mmu rb: (self pc value).
	self addCachePC: self pc value.
	self incPc.
	debugCount := debugCount + 1.
	^([((opCodesTable at: (op + 1)))] 
		on: Error 
		do:[GBDebugHalt now: ((self pc value - 1) hex copyFrom: 4 to: (self pc value - 1) hex size). 
			opCodesTable at: ((op>>8) + 1)]) 
			interpret. 
	