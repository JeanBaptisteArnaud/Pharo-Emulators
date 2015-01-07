as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	"GBPUSHBC"
	anArray at: 198 put: ( self newInstruction: 198 forProcessor: aProcessor withArg: { aProcessor bc} tick: 16).

	"GBPUSHDE"
	anArray at: 214 put: ( self newInstruction: 214 forProcessor: aProcessor withArg: {aProcessor de } tick: 16).

	"GBPUSHHL"
	anArray at: 230 put: ( self newInstruction: 230 forProcessor: aProcessor withArg: { aProcessor hl} tick: 16).

	"GBPUSHAF"
	anArray at: 246 put: ( self newInstruction: 246 forProcessor: aProcessor withArg: {aProcessor af. } tick: 16).

	