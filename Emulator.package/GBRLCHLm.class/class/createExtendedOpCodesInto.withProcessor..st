as yet unclassified
createExtendedOpCodesInto: anArray withProcessor: aProcessor 
	
	"GBRLCHL"
	anArray at: 7 put: ( self newInstruction: 7 forProcessor: aProcessor withArg: { } tick: 16).