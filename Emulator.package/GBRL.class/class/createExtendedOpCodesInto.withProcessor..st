as yet unclassified
createExtendedOpCodesInto: anArray withProcessor: aProcessor 
	"GBRLr_b"
	anArray at: 17 put: ( self newInstruction: 17 forProcessor: aProcessor withArg: {aProcessor b } tick: 8).

	"GBRLr_c"
	anArray at: 18 put: ( self newInstruction: 18 forProcessor: aProcessor withArg: {aProcessor c } tick: 8).

	"GBRLr_d"
	anArray at: 19 put: ( self newInstruction: 19 forProcessor: aProcessor withArg: {aProcessor d } tick: 8).

	"GBRLr_e"
	anArray at: 20 put: ( self newInstruction: 20 forProcessor: aProcessor withArg: {aProcessor e } tick: 8).

	"GBRLr_h"
	anArray at: 21 put: ( self newInstruction: 21 forProcessor: aProcessor withArg: {aProcessor h } tick: 8).

	"GBRLr_l"
	anArray at: 22 put: ( self newInstruction: 22 forProcessor: aProcessor withArg: {aProcessor l } tick: 8).

	"GBRLr_a"
	anArray at: 24 put: ( self newInstruction: 24 forProcessor: aProcessor withArg: {aProcessor a } tick: 8).

	