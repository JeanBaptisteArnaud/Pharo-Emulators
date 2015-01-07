as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	anArray at: 257 put: ( self newInstruction: 257 forProcessor: aProcessor withArg: { } tick: 4).