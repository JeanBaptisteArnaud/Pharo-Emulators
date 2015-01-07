as yet unclassified
createExtendedOpCodesInto: anArray withProcessor: aProcessor 
	"GBSWAPr_b"
	anArray at: 49 put: ( self newInstruction: 49 forProcessor: aProcessor withArg: {aProcessor b } tick: 8).

	"GBSWAPr_c"
	anArray at: 50 put: ( self newInstruction: 50 forProcessor: aProcessor withArg: {aProcessor c } tick: 8).

	"GBSWAPr_d"
	anArray at: 51 put: ( self newInstruction: 51 forProcessor: aProcessor withArg: {aProcessor d } tick: 8).

	"GBSWAPr_e"
	anArray at: 52 put: ( self newInstruction: 52 forProcessor: aProcessor withArg: {aProcessor e } tick: 8).

	"GBSWAPr_h"
	anArray at: 53 put: ( self newInstruction: 53 forProcessor: aProcessor withArg: {aProcessor h } tick: 8).

	"GBSWAPr_l"
	anArray at: 54 put: ( self newInstruction: 54 forProcessor: aProcessor withArg: {aProcessor l } tick: 8).

	"GBSWAPr_a"
	anArray at: 56 put: ( self newInstruction: 56 forProcessor: aProcessor withArg: {aProcessor a } tick: 8).

	