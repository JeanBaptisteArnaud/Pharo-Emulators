as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	"GBINCHLm"
	anArray at: 53 put: ( self newInstruction: 53 forProcessor: aProcessor withArg: {} tick: 12).
	