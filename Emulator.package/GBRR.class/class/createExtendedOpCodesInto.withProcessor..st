as yet unclassified
createExtendedOpCodesInto: anArray withProcessor: aProcessor 
	"GBRRr_b"
	anArray at: 25 put: ( self newInstruction: 25 forProcessor: aProcessor withArg: {aProcessor b } tick: 8).

	"GBRRr_c"
	anArray at: 26 put: ( self newInstruction: 26 forProcessor: aProcessor withArg: {aProcessor c } tick: 8).

	"GBRRr_d"
	anArray at: 27 put: ( self newInstruction: 27 forProcessor: aProcessor withArg: {aProcessor d } tick: 8).

	"GBRRr_e"
	anArray at: 28 put: ( self newInstruction: 28 forProcessor: aProcessor withArg: {aProcessor e } tick: 8).

	"GBRRr_h"
	anArray at: 29 put: ( self newInstruction: 29 forProcessor: aProcessor withArg: { aProcessor h} tick: 8).

	"GBRRr_l"
	anArray at: 30 put: ( self newInstruction: 30 forProcessor: aProcessor withArg: {aProcessor l } tick: 8).

	"GBRRr_a"
	anArray at: 32 put: ( self newInstruction: 32 forProcessor: aProcessor withArg: {aProcessor a } tick: 8).

	