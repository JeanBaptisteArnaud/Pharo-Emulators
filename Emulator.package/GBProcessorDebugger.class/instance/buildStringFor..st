as yet unclassified
buildStringFor: aCollection
	| string |
	string := ''.
	aCollection do:[:e | string := string, e, '	'.].
	^string