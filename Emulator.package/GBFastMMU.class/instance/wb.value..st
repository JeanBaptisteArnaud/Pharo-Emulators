as yet unclassified
wb: addr value: arg

	| value | 
	arg isInteger not ifTrue: [Halt now.].
	value := addr + 1.
	^(memoryMap at: value) wb: value value: arg.
	