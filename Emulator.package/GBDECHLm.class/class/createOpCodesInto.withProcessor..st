as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	"GBDECHLm"
	anArray at: 54 put: ( self newInstruction: 54 forProcessor: aProcessor withArg: { } tick: 12).	