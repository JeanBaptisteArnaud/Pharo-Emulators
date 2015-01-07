as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	"GBSUBr_b"
	anArray at: 145 put: ( self newInstruction: 145 forProcessor: aProcessor withArg: {aProcessor b } tick: 4).

	"GBSUBr_c"
	anArray at: 146 put: ( self newInstruction: 146 forProcessor: aProcessor withArg: {aProcessor c } tick: 4).

	"GBSUBr_d"
	anArray at: 147 put: ( self newInstruction: 147 forProcessor: aProcessor withArg: {aProcessor d } tick: 4).

	"GBSUBr_e"
	anArray at: 148 put: ( self newInstruction: 148 forProcessor: aProcessor withArg: {aProcessor e } tick: 4).

	"GBSUBr_h"
	anArray at: 149 put: ( self newInstruction: 149 forProcessor: aProcessor withArg: {aProcessor h } tick: 4).

	"GBSUBr_l"
	anArray at: 150 put: ( self newInstruction: 150 forProcessor: aProcessor withArg: {aProcessor l } tick: 4).

	"GBSUBHL"
	anArray at: 151 put: ( self newInstruction: 151 forProcessor: aProcessor withArg: {[aProcessor memoryAtHl] } tick: 8).

	"GBSUBr_a"
	anArray at: 152 put: ( self newInstruction: 152 forProcessor: aProcessor withArg: {aProcessor a } tick: 4).

	"GBSUBn"
	anArray at: 215 put: ( self newInstruction: 215 forProcessor: aProcessor withArg: {[aProcessor memoryAtPc] } tick: 8).

	