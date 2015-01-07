as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	anArray at: 119 put: ( self newInstruction: 119 forProcessor: aProcessor withArg: { } tick: 4).