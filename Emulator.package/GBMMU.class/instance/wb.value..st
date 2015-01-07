as yet unclassified
wb: addr value: arg
	| value |
	value := (addr>>12) hex last asString.
	^(memoryMap at: value) wb: addr  value: arg.