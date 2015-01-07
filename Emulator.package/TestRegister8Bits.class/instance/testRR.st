as yet unclassified
testRR
	| register | 
	register := self createRegister.
	register value: 2r10000001.
	register rr.
	self assert: (register value = 2r01000000).
	self assert: (register flag C).
	register rr.
	self assert: (register value = 2r10100000).
	self assert: (register flag NC).