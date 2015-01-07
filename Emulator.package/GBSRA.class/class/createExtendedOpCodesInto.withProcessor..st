as yet unclassified
createExtendedOpCodesInto: anArray withProcessor: aProcessor
	"GBSRAr_b"
	anArray at: 41 put: ( self newInstruction: 41 forProcessor: aProcessor withArg: {aProcessor b } tick: 8).

	"GBSRAr_c"
	anArray at: 42 put: ( self newInstruction: 42 forProcessor: aProcessor withArg: {aProcessor c } tick: 8).

	"GBSRAr_d"
	anArray at: 43 put: ( self newInstruction: 43 forProcessor: aProcessor withArg: {aProcessor d } tick: 8).

	"GBSRAr_e"
	anArray at: 44 put: ( self newInstruction: 44 forProcessor: aProcessor withArg: {aProcessor e } tick: 8).

	"GBSRAr_h"
	anArray at: 45 put: ( self newInstruction: 45 forProcessor: aProcessor withArg: {aProcessor h } tick: 8).

	"GBSRAr_l"
	anArray at: 46 put: ( self newInstruction: 46 forProcessor: aProcessor withArg: {aProcessor l } tick: 8).
	
	"GBSRAr_a"
	anArray at: 48 put: ( self newInstruction: 48 forProcessor: aProcessor withArg: {aProcessor a } tick: 8).
