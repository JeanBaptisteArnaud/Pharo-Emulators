as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	anArray at: 244 put: ( self newInstruction: 244 forProcessor: aProcessor withArg: { } tick: 4).