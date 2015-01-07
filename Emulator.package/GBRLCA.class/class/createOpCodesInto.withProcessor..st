as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	"GBRLCA"
	anArray at: 8 put: ( self newInstruction: 8 forProcessor: aProcessor withArg: { } tick: 4).
