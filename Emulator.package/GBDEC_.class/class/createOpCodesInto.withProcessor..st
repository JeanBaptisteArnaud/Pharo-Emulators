as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor 
	"GBDECBC"
	anArray at: 12 put: ( self newInstruction: 12 forProcessor: aProcessor withArg: {aProcessor bc } tick: 8).
	"GBDECDE"
	anArray at: 28 put: ( self newInstruction: 28 forProcessor: aProcessor withArg: {aProcessor de } tick: 8).
	"GBDECHL"
	anArray at: 44 put: ( self newInstruction: 44 forProcessor: aProcessor withArg: {aProcessor hl } tick: 8).
	"GBDECSP"
	anArray at: 60 put: ( self newInstruction: 60 forProcessor: aProcessor withArg: {aProcessor sp} tick: 8)
