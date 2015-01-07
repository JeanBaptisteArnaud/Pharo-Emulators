as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor 

	"GBADDHLBC"
	anArray at: 10 put: ( self newInstruction: 10 forProcessor: aProcessor withArg: {aProcessor bc } tick: 8).

	"GBADDHLDE"
	anArray at: 26 put: ( self newInstruction: 26 forProcessor: aProcessor withArg: {aProcessor de } tick: 8).

	"GBADDHLHL"
	anArray at: 42 put: ( self newInstruction: 42 forProcessor: aProcessor withArg: {aProcessor hl } tick: 8).

	"GBADDHLSP"
	anArray at: 58 put: ( self newInstruction: 58 forProcessor: aProcessor withArg: {[aProcessor sp] } tick: 8).