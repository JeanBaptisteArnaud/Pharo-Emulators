as yet unclassified
handleContext: aContext
	^(aContext findContextSuchThat: [:ctx|
		ctx receiver isKindOf: GBGameboy]) notNil.