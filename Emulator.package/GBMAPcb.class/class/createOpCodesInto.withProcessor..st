as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	anArray at: 204 put: ( self newInstruction: 204 forProcessor: aProcessor withArg: {} tick: nil).
	