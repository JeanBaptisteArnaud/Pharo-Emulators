as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	"GBRRA"
	anArray at: 32 put: ( self newInstruction: 32 forProcessor: aProcessor withArg: { } tick: 4).

	