as yet unclassified
createExtendedOpCodesInto: anArray withProcessor: aProcessor 
	"GBRLHL"
	anArray at: 23 put: ( self newInstruction: 23 forProcessor: aProcessor withArg: {} tick: 16).