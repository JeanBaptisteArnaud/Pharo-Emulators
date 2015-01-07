as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	anArray at: 64 put: ( self newInstruction: 64 forProcessor: aProcessor withArg: { } tick: 4).