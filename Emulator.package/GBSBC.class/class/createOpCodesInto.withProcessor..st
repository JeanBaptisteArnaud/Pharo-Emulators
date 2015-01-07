as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor 
	"GBSBCr_b"
	anArray at: 153 put: ( self newInstruction: 153 forProcessor: aProcessor withArg: {aProcessor b } tick: 4).

	"GBSBCr_c"
	anArray at: 154 put: ( self newInstruction: 154 forProcessor: aProcessor withArg: {aProcessor c } tick: 4).

	"GBSBCr_d"
	anArray at: 155 put: ( self newInstruction: 155 forProcessor: aProcessor withArg: { aProcessor d} tick: 4).

	"GBSBCr_e"
	anArray at: 156 put: ( self newInstruction: 156 forProcessor: aProcessor withArg: {aProcessor e } tick: 4).

	"GBSBCr_h"
	anArray at: 157 put: ( self newInstruction: 157 forProcessor: aProcessor withArg: { aProcessor h} tick: 4).

	"GBSBCr_l"
	anArray at: 158 put: ( self newInstruction: 158 forProcessor: aProcessor withArg: {aProcessor l } tick: 4).

	"GBSBCHL"
	anArray at: 159 put: ( self newInstruction: 159 forProcessor: aProcessor withArg: {[aProcessor memoryAtHl ] } tick: 8).

	"GBSBCr_a"
	anArray at: 160 put: ( self newInstruction: 160 forProcessor: aProcessor withArg: {aProcessor a } tick: 4).

	"GBSBCn"
	anArray at: 223 put: ( self newInstruction: 223 forProcessor: aProcessor withArg: {[aProcessor memoryAtPc ]} tick: 8).

	