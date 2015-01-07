as yet unclassified
createExtendedOpCodesInto: anArray withProcessor: aProgress
	
	"GBSET0HL"
	anArray at: 199 put: ( self newInstruction: 199 forProcessor: aProgress withArg: {0} tick: 16).

	"GBSET1HL"
	anArray at: 207 put: ( self newInstruction: 207 forProcessor: aProgress withArg: {1} tick: 16).

	"GBSET2HL"
	anArray at: 215 put: ( self newInstruction: 215 forProcessor: aProgress withArg: {2} tick: 16).

	"GBSET3HL"
	anArray at: 223 put: ( self newInstruction: 223 forProcessor: aProgress withArg: {3} tick: 16).

	"GBSET4HL"	
	anArray at: 231 put: ( self newInstruction: 231 forProcessor: aProgress withArg: {4} tick: 16).

	"GBSET5HL"
	anArray at: 239 put: ( self newInstruction: 239 forProcessor: aProgress withArg: {5} tick: 16).

	"GBSET6HL"
	anArray at: 247 put: ( self newInstruction: 247 forProcessor: aProgress withArg: {6} tick: 16).

	"GBSET7HL"
	anArray at: 255 put: ( self newInstruction: 255 forProcessor: aProgress withArg: {7} tick: 16).
