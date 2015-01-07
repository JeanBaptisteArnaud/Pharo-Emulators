as yet unclassified
createExtendedOpCodesInto: anArray withProcessor: aProcessor 
	"GBRLCr_b"
	anArray at: 1 put: ( self newInstruction: 1 forProcessor: aProcessor withArg: {aProcessor b } tick: 8).

	"GBRLCr_c"
	anArray at: 2 put: ( self newInstruction: 2 forProcessor: aProcessor withArg: {aProcessor c } tick: 8).

	"GBRLCr_d"
	anArray at: 3 put: ( self newInstruction: 3 forProcessor: aProcessor withArg: {aProcessor d } tick: 8).

	"GBRLCr_e"
	anArray at: 4 put: ( self newInstruction: 4 forProcessor: aProcessor withArg: {aProcessor e } tick: 8).

	"GBRLCr_h"
	anArray at: 5 put: ( self newInstruction: 5 forProcessor: aProcessor withArg: {aProcessor h } tick: 8).

	"GBRLCr_l"
	anArray at: 6 put: ( self newInstruction: 6 forProcessor: aProcessor withArg: {aProcessor l } tick: 8).

	"GBRLCr_a"
	anArray at: 8 put: ( self newInstruction: 8 forProcessor: aProcessor withArg: {aProcessor a } tick: 8).
