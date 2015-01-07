as yet unclassified
createExtendedOpCodesInto: anArray withProcessor: aProcessor 
	"GBSLAr_b"
	anArray at: 33 put: ( self newInstruction: 33 forProcessor: aProcessor withArg: {aProcessor  b} tick: 8).

	"GBSLAr_c"
	anArray at: 34 put: ( self newInstruction: 34 forProcessor: aProcessor withArg: {aProcessor c } tick: 8).

	"GBSLAr_d"
	anArray at: 35 put: ( self newInstruction: 35 forProcessor: aProcessor withArg: {aProcessor d } tick: 8).

	"GBSLAr_e"
	anArray at: 36 put: ( self newInstruction: 36 forProcessor: aProcessor withArg: {aProcessor e } tick: 8).

	"GBSLAr_h"
	anArray at: 37 put: ( self newInstruction: 37 forProcessor: aProcessor withArg: { aProcessor h} tick: 8).

	"GBSLAr_l"
	anArray at: 38 put: ( self newInstruction: 38 forProcessor: aProcessor withArg: {aProcessor l } tick: 8).
	
	"GBSLAr_hl"
	anArray at: 39 put: ( self newInstruction: 38 forProcessor: aProcessor withArg: {aProcessor hl } tick: 8).

	"GBSLAr_a"
	anArray at: 40 put: ( self newInstruction: 40 forProcessor: aProcessor withArg: {aProcessor a } tick: 8).

	