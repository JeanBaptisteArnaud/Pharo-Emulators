as yet unclassified
testRL
	| register | 
	register := self createRegister.
	register value: 2r10000001.
	register rl.
	self assert: (register value = 2r00000010).
	self assert: (register flag C).
	register rl.
	self assert: (register value = 2r00000101).
	