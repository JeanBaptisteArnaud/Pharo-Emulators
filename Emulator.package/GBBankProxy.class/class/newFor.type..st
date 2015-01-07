as yet unclassified
newFor: originalRom type: aString
	^self perform: (aString,':') asSymbol withArguments: {originalRom}.