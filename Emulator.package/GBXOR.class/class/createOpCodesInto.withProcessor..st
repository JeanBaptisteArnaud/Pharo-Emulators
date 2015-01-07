as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor 
	"GBXORr_b"
	anArray at: 169 put: ( self newInstruction: 169 forProcessor: aProcessor withArg: {aProcessor b } tick: 4).

	"GBXORr_c"
	anArray at: 170 put: ( self newInstruction: 170 forProcessor: aProcessor withArg: {aProcessor c } tick: 4).

	"GBXORr_d"
	anArray at: 171 put: ( self newInstruction: 171 forProcessor: aProcessor withArg: {aProcessor d } tick: 4).

	"GBXORr_e"
	anArray at: 172 put: ( self newInstruction: 172 forProcessor: aProcessor withArg: {aProcessor e } tick: 4).

	"GBXORr_h"
	anArray at: 173 put: ( self newInstruction: 173 forProcessor: aProcessor withArg: {aProcessor h } tick: 4).

	"GBXORr_l"
	anArray at: 174 put: ( self newInstruction: 174 forProcessor: aProcessor withArg: {aProcessor l } tick: 4).

	"GBXORHL"
	anArray at: 175 put: ( self newInstruction: 175 forProcessor: aProcessor withArg: {[aProcessor memoryAtHl ] } tick: 8).

	"GBXORr_a"
	anArray at: 176 put: ( self newInstruction: 176 forProcessor: aProcessor withArg: {aProcessor a } tick: 4).

	"GBXORn"
	anArray at: 247 put: ( self newInstruction: 247 forProcessor: aProcessor withArg: { [aProcessor memoryAtPc]} tick: 8).

	