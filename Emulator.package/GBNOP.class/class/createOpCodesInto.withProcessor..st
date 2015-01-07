as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	anArray at: 1 put: ( self newInstruction: 1 forProcessor: aProcessor withArg: { } tick: 4).