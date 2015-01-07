as yet unclassified
wb: aAdrress value: aValue

	((aValue bitAnd: 48) ~= aValue) ifTrue:[Halt now.].
	^value := value bitOr: aValue.
	