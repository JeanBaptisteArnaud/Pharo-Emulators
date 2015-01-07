as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	"GBCALLNZnn"
	anArray at: 197 put: ( self newInstruction: 197 forProcessor: aProcessor withArg: {[aProcessor flags NZ]} tick: 24).

	"GBCALLZnn"
	anArray at: 205 put: ( self newInstruction: 205 forProcessor: aProcessor withArg: {[aProcessor flags Z]} tick: 24).

	"GBCALLnn"
	anArray at: 206 put: ( self newInstruction: 206 forProcessor: aProcessor withArg: {[true]} tick: 24).

	"GBCALLNCnn"
	anArray at: 213 put: ( self newInstruction: 213 forProcessor: aProcessor withArg: {[aProcessor flags NC ]} tick: 24).

	"GBCALLCnn"
	anArray at: 221 put: ( self newInstruction: 221 forProcessor: aProcessor withArg: {[aProcessor flags C]} tick: 24).

	