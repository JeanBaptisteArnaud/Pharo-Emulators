as yet unclassified
createExtendedOpCodesInto: anArray withProcessor: aProcessor 
	"GBSLAr_hl"
	anArray at: 39 put: ( self newInstruction: 38 forProcessor: aProcessor withArg: { } tick: 16).
	