as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor 

	"GBADDSPn"
	anArray at: 233 put: ( self newInstruction: 233 forProcessor: aProcessor withArg: {} tick: 16).
