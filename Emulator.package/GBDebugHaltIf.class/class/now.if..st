as yet unclassified
now: value if: block
	^block value ifTrue:[ self new signal: 'Halt at ', value]
