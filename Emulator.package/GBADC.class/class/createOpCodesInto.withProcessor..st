as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	"GBADCr_b"
	anArray at: 137 put: ( self newInstruction: 137 forProcessor: aProcessor withArg: {aProcessor b} tick: 4)..

	"GBADCr_c"
	anArray at: 138 put: ( self newInstruction: 138 forProcessor: aProcessor withArg: {aProcessor c } tick: 4).

	"GBADCr_d"
	anArray at: 139 put: ( self newInstruction: 139 forProcessor: aProcessor withArg: {aProcessor d } tick: 4).

	"GBADCr_e"
	anArray at: 140 put: ( self newInstruction: 140 forProcessor: aProcessor withArg: {aProcessor e } tick: 4).

	"GBADCr_h"
	anArray at: 141 put: ( self newInstruction: 141 forProcessor: aProcessor withArg: {aProcessor h} tick: 4).

	"GBADCr_l"
	anArray at: 142 put: ( self newInstruction: 142 forProcessor: aProcessor withArg: {aProcessor l } tick: 4).

	"GBADCHL"
	anArray at: 143 put: ( self newInstruction: 143 forProcessor: aProcessor withArg: {[aProcessor memoryAtHl] } tick: 8).

	"GBADCr_a"
	anArray at: 144 put: ( self newInstruction: 144 forProcessor: aProcessor withArg: {aProcessor a} tick: 4).

	"GBADCn"
	anArray at: 207 put: ( self newInstruction: 207 forProcessor: aProcessor withArg: {[aProcessor memoryAtPc]} tick: 8).

	