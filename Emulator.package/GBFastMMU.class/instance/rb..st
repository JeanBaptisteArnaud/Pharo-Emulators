as yet unclassified
rb: addr
	| value | 
	value := addr + 1.
	^(memoryMap at: value) rb: value.