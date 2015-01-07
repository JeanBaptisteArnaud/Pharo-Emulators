as yet unclassified
indexOf: aString
	| result |
	result := opCodesMapping select: [:e | e printString includesSubstring: aString ].
	^result collect:[:d | (opCodesMapping indexOf: d) - 1]