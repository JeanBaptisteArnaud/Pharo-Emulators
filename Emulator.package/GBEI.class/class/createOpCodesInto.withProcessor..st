as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	anArray at: 252 put: ( self newInstruction: 252 forProcessor: aProcessor withArg: { } tick: 4).