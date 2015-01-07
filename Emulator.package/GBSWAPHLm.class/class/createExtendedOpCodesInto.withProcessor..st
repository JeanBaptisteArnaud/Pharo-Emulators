as yet unclassified
createExtendedOpCodesInto: anArray withProcessor: aProcessor 
	"GBSWAPr_hl"
	anArray at: 55 put: ( self newInstruction: 5 forProcessor: aProcessor withArg: {} tick: 16).

	