as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	"GBCPL"
	anArray at: 48 put: ( self newInstruction: 48 forProcessor: aProcessor withArg: { } tick: 4).