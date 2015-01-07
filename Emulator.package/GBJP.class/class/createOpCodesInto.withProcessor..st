as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	"GBJPNZnn"
	anArray at: 195 put: ( self newInstruction: 195 forProcessor: aProcessor withArg: { [aProcessor flags NZ] } tick: 16).

	"GBJPnn"
	anArray at: 196 put: ( self newInstruction: 196 forProcessor: aProcessor withArg: {[true]  } tick: 16).

	"GBJPZnn"
	anArray at: 203 put: ( self newInstruction: 203 forProcessor: aProcessor withArg: {[ aProcessor flags Z] } tick: 16).

	"GBJPNCnn"
	anArray at: 211 put: ( self newInstruction: 211 forProcessor: aProcessor withArg: {[aProcessor flags NC] } tick: 16).

	"GBJPCnn"
	anArray at: 219 put: ( self newInstruction: 219 forProcessor: aProcessor withArg: { [aProcessor flags C] } tick: 16).


	