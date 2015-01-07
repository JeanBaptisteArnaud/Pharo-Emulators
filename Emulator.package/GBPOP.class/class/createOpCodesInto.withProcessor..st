as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	"GBPOPBC"
	anArray at: 194 put: ( self newInstruction: 194 forProcessor: aProcessor withArg: {aProcessor bc  } tick: 12).

	"GBPOPDE"
	anArray at: 210 put: ( self newInstruction: 210 forProcessor: aProcessor withArg: {aProcessor de } tick: 12).

	"GBPOPHL"
	anArray at: 226 put: ( self newInstruction: 226 forProcessor: aProcessor withArg: {aProcessor hl } tick: 12).

	"GBPOPAF"
	anArray at: 242 put: ( self newInstruction: 242 forProcessor: aProcessor withArg: {aProcessor af } tick: 12).

	