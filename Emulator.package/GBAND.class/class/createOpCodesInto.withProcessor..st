as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	"GBANDr_b"
	anArray at: 161 put: ( self newInstruction: 161 forProcessor: aProcessor withArg: {aProcessor b } tick: 4).

	"GBANDr_c"
	anArray at: 162 put: ( self newInstruction: 162 forProcessor: aProcessor withArg: {aProcessor c } tick: 4).

	"GBANDr_d"
	anArray at: 163 put: ( self newInstruction: 163 forProcessor: aProcessor withArg: {aProcessor d } tick: 4).

	"GBANDr_e"
	anArray at: 164 put: ( self newInstruction: 164 forProcessor: aProcessor withArg: {aProcessor e } tick: 4).

	"GBANDr_h"
	anArray at: 165 put: ( self newInstruction: 165 forProcessor: aProcessor withArg: {aProcessor h } tick: 4).

	"GBANDr_l"
	anArray at: 166 put: ( self newInstruction: 166 forProcessor: aProcessor withArg: {aProcessor l } tick: 4).

	"GBANDHL"
	anArray at: 167 put: ( self newInstruction: 167 forProcessor: aProcessor withArg: {[aProcessor memoryAtHl] } tick: 8).

	"GBANDr_a"
	anArray at: 168 put: ( self newInstruction: 168 forProcessor: aProcessor withArg: {aProcessor a } tick: 4).

	"GBANDn"
	anArray at: 231 put: ( self newInstruction: 231 forProcessor: aProcessor withArg: {[aProcessor memoryAtPc] } tick: 8).

	