as yet unclassified
testRRC
	| register | 
	register := self createRegister.
	register value: 2r10000001.
	register rrc.
	self assert: (register value = 2r11000000).
	self assert: (register flag C).
	register rrc.
	self assert: (register value = 2r01100000).
	self assert: (register flag NC).