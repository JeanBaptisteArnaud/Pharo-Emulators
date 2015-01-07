as yet unclassified
createExtendedOpCodesInto: anArray withProcessor: aProcessor
	"GBSRAr_hl"
	anArray at: 47 put: ( self newInstruction: 47 forProcessor: aProcessor withArg: {} tick: 16).
