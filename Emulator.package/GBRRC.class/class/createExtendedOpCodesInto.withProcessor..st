as yet unclassified
createExtendedOpCodesInto: anArray withProcessor: aProcessor
	"GBRRCr_b"
	anArray at: 9 put: ( self newInstruction: 9 forProcessor: aProcessor withArg: {aProcessor b } tick: 8).

	"GBRRCr_c"
	anArray at: 10 put: ( self newInstruction: 10 forProcessor: aProcessor withArg: {aProcessor c } tick: 8).

	"GBRRCr_d"
	anArray at: 11 put: ( self newInstruction: 11 forProcessor: aProcessor withArg: {aProcessor d } tick: 8).

	"GBRRCr_e"
	anArray at: 12 put: ( self newInstruction: 12 forProcessor: aProcessor withArg: { aProcessor e} tick: 8).

	"GBRRCr_h"
	anArray at: 13 put: ( self newInstruction: 13 forProcessor: aProcessor withArg: {aProcessor h } tick: 8).

	"GBRRCr_l"
	anArray at: 14 put: ( self newInstruction: 14 forProcessor: aProcessor withArg: {aProcessor l } tick: 8).

	"GBRRCr_a"
	anArray at: 16 put: ( self newInstruction: 16 forProcessor: aProcessor withArg: {aProcessor a } tick: 8).

	"GBRRr_b"
	anArray at: 25 put: ( self newInstruction: 25 forProcessor: aProcessor withArg: { } tick: 8).
