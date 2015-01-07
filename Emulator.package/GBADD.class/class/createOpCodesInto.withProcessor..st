as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor

	"GBADDr_b"
	anArray at: 129 put: ( self newInstruction: 129 forProcessor: aProcessor withArg: { aProcessor b} tick: 4).

	"GBADDr_c"
	anArray at: 130 put: ( self newInstruction: 130 forProcessor: aProcessor withArg: {aProcessor c } tick: 4).

	"GBADDr_d"
	anArray at: 131 put: ( self newInstruction: 131 forProcessor: aProcessor withArg: {aProcessor d } tick: 4).

	"GBADDr_e"
	anArray at: 132 put: ( self newInstruction: 132 forProcessor: aProcessor withArg: {aProcessor e } tick: 4).

	"GBADDr_h"
	anArray at: 133 put: ( self newInstruction: 133 forProcessor: aProcessor withArg: {aProcessor h } tick: 4).

	"GBADDr_l"
	anArray at: 134 put: ( self newInstruction: 134 forProcessor: aProcessor withArg: {aProcessor l } tick: 4).

	"GBADDHL"
	anArray at: 135 put: ( self newInstruction: 135 forProcessor: aProcessor withArg: {[aProcessor memoryAtHL] } tick: 8).

	"GBADDr_a"
	anArray at: 136 put: ( self newInstruction: 136 forProcessor: aProcessor withArg: {aProcessor a} tick: 4).

	"GBADDn"
	anArray at: 199 put: ( self newInstruction: 199 forProcessor: aProcessor withArg: {[aProcessor memoryAtPc] } tick: 8).



	