as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	"GBRETNZ"
	anArray at: 193 put: ( self newInstruction: 193 forProcessor: aProcessor withArg: {[aProcessor flags NZ]} tick: 20).

	"GBRETZ"
	anArray at: 201 put: ( self newInstruction: 201 forProcessor: aProcessor withArg: {[aProcessor flags Z]} tick: 20).

	"GBRET"
	anArray at: 202 put: ( self newInstruction: 202 forProcessor: aProcessor withArg: {[true]} tick: 16).

	"GBRETNC"
	anArray at: 209 put: ( self newInstruction: 209 forProcessor: aProcessor withArg: {[aProcessor flags NC]} tick: 20).

	"GBRETC"
	anArray at: 217 put: ( self newInstruction: 217 forProcessor: aProcessor withArg: {[aProcessor flags C]} tick: 20).

	"GBRETI"
	anArray at: 218 put: ( self newInstruction: 218 forProcessor: aProcessor withArg: {[aProcessor flags enableInterrupts. true]} tick: 16).

	