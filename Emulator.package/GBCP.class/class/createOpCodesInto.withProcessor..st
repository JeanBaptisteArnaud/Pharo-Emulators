as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor 
	"GBCPr_b"
	anArray at: 185 put: ( self newInstruction: 185 forProcessor: aProcessor withArg: {aProcessor b} tick: 4).

	"GBCPr_c"
	anArray at: 186 put: ( self newInstruction: 186 forProcessor: aProcessor withArg: {aProcessor c} tick: 4).

	"GBCPr_d"
	anArray at: 187 put: ( self newInstruction: 187 forProcessor: aProcessor withArg: {aProcessor d} tick: 4).

	"GBCPr_e"
	anArray at: 188 put: ( self newInstruction: 188 forProcessor: aProcessor withArg: {aProcessor e} tick: 4).

	"GBCPr_h"
	anArray at: 189 put: ( self newInstruction: 189 forProcessor: aProcessor withArg: {aProcessor h} tick: 4).

	"GBCPr_l"
	anArray at: 190 put: ( self newInstruction: 190 forProcessor: aProcessor withArg: {aProcessor l} tick: 4).

	"GBCPHL"
	anArray at: 191 put: ( self newInstruction: 191 forProcessor: aProcessor withArg: {[aProcessor memoryAtHL ]} tick: 8).

	"GBCPr_a"
	anArray at: 192 put: ( self newInstruction: 192 forProcessor: aProcessor withArg: {aProcessor a } tick: 4).

	"GBCPn"
	anArray at: 255 put: ( self newInstruction: 255 forProcessor: aProcessor withArg: {[aProcessor memoryAtPc] } tick: 8).

	