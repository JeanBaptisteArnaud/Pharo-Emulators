as yet unclassified
getAllByteCodeWith: aString
	| result |
	^result := opCodesMapping select: [:e | e printString includesSubstring: aString ].
	