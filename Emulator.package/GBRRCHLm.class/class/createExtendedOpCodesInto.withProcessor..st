as yet unclassified
createExtendedOpCodesInto: anArray withProcessor: aProcessor
	"GBRRCHL"
	anArray at: 15 put: ( self newInstruction: 15 forProcessor: aProcessor withArg: {} tick: 16).