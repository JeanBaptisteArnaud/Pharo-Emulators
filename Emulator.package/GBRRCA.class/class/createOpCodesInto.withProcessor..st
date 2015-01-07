as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	"GBRRCA"
	anArray at: 16 put: ( self newInstruction: 16 forProcessor: aProcessor withArg: { } tick: 4).


	