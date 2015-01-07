as yet unclassified
wb: aAdrress value: aValue
	^registerTables at:(aAdrress - self beginAddress) put: aValue.
