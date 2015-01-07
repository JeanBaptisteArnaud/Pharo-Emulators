as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	"GBRLA"
	anArray at: 24 put: ( self newInstruction: 24 forProcessor: aProcessor withArg: { } tick: 4).

	