as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	anArray at: 17 put: ( self newInstruction: 17 forProcessor: aProcessor withArg: { } tick: 4).