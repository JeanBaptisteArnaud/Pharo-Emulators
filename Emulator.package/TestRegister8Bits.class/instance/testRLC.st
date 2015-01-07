as yet unclassified
testRLC
	| register | 
	register := self createRegister.
	register value: 2r10000001.
	register rlc.
	self assert: (register value = 2r000000011).
	self assert: (register flag C).
	register rlc.
	self assert: (register value = 2r00000110).
	self assert: (register flag NC).