as yet unclassified
createExtendedOpCodesInto: anArray withProcessor: aProcessor 
	"GBRRHL"
	anArray at: 31 put: ( self newInstruction: 31 forProcessor: aProcessor withArg: {} tick: 16).