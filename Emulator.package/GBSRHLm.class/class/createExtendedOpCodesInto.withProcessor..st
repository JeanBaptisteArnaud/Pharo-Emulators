as yet unclassified
createExtendedOpCodesInto: anArray withProcessor: aProcessor
	"GBSRLr_b"
	anArray at:  63 put: ( self newInstruction:  63 forProcessor: aProcessor withArg: {} tick: 16).
