as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor 
	"GBINCBC"
	anArray at: 4 put: ( self newInstruction: 4 forProcessor: aProcessor withArg: { aProcessor bc} tick: 8).
	"GBINCDE"
	anArray at: 20 put: ( self newInstruction: 20 forProcessor: aProcessor withArg: { aProcessor de} tick: 8).
	"GBINCHL"
	anArray at: 36 put: ( self newInstruction: 36 forProcessor: aProcessor withArg: { aProcessor hl } tick: 8).
	"GBINCSP"
	anArray at: 52 put: ( self newInstruction: 52 forProcessor: aProcessor withArg: {aProcessor sp} tick: 8).


