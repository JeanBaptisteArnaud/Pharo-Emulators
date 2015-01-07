as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	"DAA"
	anArray at: 40 put: ( self newInstruction: 40 forProcessor: aProcessor withArg: { } tick: 4).