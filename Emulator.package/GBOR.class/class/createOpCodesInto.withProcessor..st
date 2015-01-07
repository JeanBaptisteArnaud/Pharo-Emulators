as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	"GBORr_b"
	anArray at: 177 put: ( self newInstruction: 177 forProcessor: aProcessor withArg: {aProcessor b } tick: 4).

	"GBORr_c"
	anArray at: 178 put: ( self newInstruction: 178 forProcessor: aProcessor withArg: {aProcessor c } tick: 4).

	"GBORr_d"
	anArray at: 179 put: ( self newInstruction: 179 forProcessor: aProcessor withArg: {aProcessor d } tick: 4).

	"GBORr_e"
	anArray at: 180 put: ( self newInstruction: 180 forProcessor: aProcessor withArg: {aProcessor e } tick: 4).

	"GBORr_h"
	anArray at: 181 put: ( self newInstruction: 181 forProcessor: aProcessor withArg: {aProcessor h } tick: 4).

	"GBORr_l"
	anArray at: 182 put: ( self newInstruction: 182 forProcessor: aProcessor withArg: {aProcessor l } tick: 4).

	"GBORHL"
	anArray at: 183 put: ( self newInstruction: 183 forProcessor: aProcessor withArg: {[aProcessor memoryAtHl ] } tick: 8).

	"GBORr_a"
	anArray at: 184 put: ( self newInstruction: 184 forProcessor: aProcessor withArg: {aProcessor a } tick: 4).

	"GBORn"
	anArray at: 239 put: ( self newInstruction: 239 forProcessor: aProcessor withArg: {[aProcessor memoryAtPc] } tick: 8).

	