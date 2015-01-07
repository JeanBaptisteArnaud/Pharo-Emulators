as yet unclassified
testCoherenceBetweenMemoryAndScreenRegister
	| memory screen |
	memory := gb memory.
	screen := gb screen.
	
	1 to: 42 do:[:index |
		self assert: ((screen at: index) == (memory rb: (16rff40 + index - 1))).
		screen at: index put: 2.
		self assert: ((screen at: index) == (memory rb: (16rff40 + index - 1))).
		memory wb: (16rff40 + index - 1) value: 2.
		self assert: ((screen at: index) == (memory rb: (16rff40 + index - 1))).
	].
	
	

	