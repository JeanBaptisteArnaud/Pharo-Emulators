as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	"GBJRn"
	anArray at: 25 put: ( self newInstruction: 25 forProcessor: aProcessor withArg: { [true] } tick: 12).

	"GBJRNZn"
	anArray at: 33 put: ( self newInstruction: 33 forProcessor: aProcessor withArg: {[aProcessor flags NZ] } tick: 12).

	"GBJRZn"
	anArray at: 41 put: ( self newInstruction: 41 forProcessor: aProcessor withArg: {[aProcessor flags Z]} tick: 12).

	"GBJRNCn"
	anArray at: 49 put: ( self newInstruction: 49 forProcessor: aProcessor withArg: {[aProcessor flags NC]} tick: 12).

	"GBJRCn"
	anArray at: 57 put: ( self newInstruction: 57 forProcessor: aProcessor withArg: {[aProcessor flags C]} tick: 12).

	