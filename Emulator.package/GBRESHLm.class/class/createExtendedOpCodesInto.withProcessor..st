as yet unclassified
createExtendedOpCodesInto: anArray withProcessor: aPro
	
	"GBRES0HL"	
	anArray at: 135 put: ( self newInstruction: 135 forProcessor: aPro withArg: {0 } tick: 16).

	"GBRES1HL"	
	anArray at: 143 put: ( self newInstruction: 143 forProcessor: aPro withArg: {1 } tick: 16).

	"GBRES2HL"	
	anArray at: 151 put: ( self newInstruction: 151 forProcessor: aPro withArg: {2 } tick: 16).

	"GBRES3HL"	
	anArray at: 159 put: ( self newInstruction: 159 forProcessor: aPro withArg: {3} tick: 16).

	"GBRES4HL"	
	anArray at: 167 put: ( self newInstruction: 167 forProcessor: aPro withArg: {4 } tick: 16).
	
	"GBRES5HL"
	anArray at: 175 put: ( self newInstruction: 175 forProcessor: aPro withArg: {5 } tick: 16).

	"GBRES6HL"	
	anArray at: 183 put: ( self newInstruction: 183 forProcessor: aPro withArg: { 6} tick: 16).

	"GBRES7HL"	
	anArray at: 191 put: ( self newInstruction: 191 forProcessor: aPro withArg: {7 } tick: 16).
