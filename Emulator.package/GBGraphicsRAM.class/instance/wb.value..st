as yet unclassified
wb: addr value: anObject
	^self byteAt: (addr - self beginValue) put: anObject