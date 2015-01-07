as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	anArray at: 56 put: ( self newInstruction: 56 forProcessor: aProcessor withArg: { } tick: 4).