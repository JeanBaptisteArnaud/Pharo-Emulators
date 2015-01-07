as yet unclassified
rb: addr
	| value |
	value := (addr>>12) hex last asString.
	^(memoryMap at: value) rb: addr.
