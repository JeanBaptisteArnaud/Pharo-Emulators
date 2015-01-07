as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	"GBINCr_b"
	anArray at: 5 put: ( self newInstruction: 5 forProcessor: aProcessor withArg: { aProcessor b} tick: 4).

	"GBINCr_c"
	anArray at: 13 put: ( self newInstruction: 13 forProcessor: aProcessor withArg: {aProcessor c } tick: 4).
	
	"GBINCr_d"
	anArray at: 21 put: ( self newInstruction: 21 forProcessor: aProcessor withArg: {aProcessor d } tick: 4).

	"GBINCr_e"
	anArray at: 29 put: ( self newInstruction: 29 forProcessor: aProcessor withArg: {aProcessor e } tick: 4).
	
	"GBINCr_h"
	anArray at: 37 put: ( self newInstruction: 37 forProcessor: aProcessor withArg: {aProcessor h } tick: 4).

	"GBINCr_l"
	anArray at: 45 put: ( self newInstruction: 45 forProcessor: aProcessor withArg: {aProcessor l } tick: 4).
	
	"GBINCr_a"
	anArray at: 61 put: ( self newInstruction: 61 forProcessor: aProcessor withArg: {aProcessor a } tick: 4).

	