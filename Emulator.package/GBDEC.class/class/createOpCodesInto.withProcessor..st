as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	"GBDECr_b"
	anArray at: 6 put: ( self newInstruction: 6 forProcessor: aProcessor withArg: { aProcessor b} tick: 12).
	
	"GBDECr_c"
	anArray at: 14 put: ( self newInstruction: 14 forProcessor: aProcessor withArg: {aProcessor c } tick: 4).

	"GBDECr_d"
	anArray at: 22 put: ( self newInstruction: 22 forProcessor: aProcessor withArg: {aProcessor d } tick: 4).

	"GBDECr_e"
	anArray at: 30 put: ( self newInstruction: 30 forProcessor: aProcessor withArg: {aProcessor e } tick: 4).

	"GBDECr_h"
	anArray at: 38 put: ( self newInstruction: 38 forProcessor: aProcessor withArg: {aProcessor h } tick: 4).

	"GBDECr_l"
	anArray at: 46 put: ( self newInstruction: 46 forProcessor: aProcessor withArg: {aProcessor l } tick: 4).

	"GBDECr_a"
	anArray at: 62 put: ( self newInstruction: 62 forProcessor: aProcessor withArg: {aProcessor a } tick: 4).

	