as yet unclassified
createExtendedOpCodesInto: anArray withProcessor: aProcessor

	"GBBIT0m"
	anArray at: 71 put: ( self newInstruction: 71 forProcessor: aProcessor withArg: {0 } tick: 12).

	"GBBIT1m"
	anArray at: 79 put: ( self newInstruction: 79 forProcessor: aProcessor withArg: {1} tick: 12).

	"GBBIT2m"
	anArray at: 87 put: ( self newInstruction: 87 forProcessor: aProcessor withArg: {2} tick: 12).

	"GBBIT3m"
	anArray at: 95 put: ( self newInstruction: 95 forProcessor: aProcessor withArg: {3} tick: 12).

	"GBBIT4m"
	anArray at: 103 put: ( self newInstruction: 103 forProcessor: aProcessor withArg: {4} tick: 12).

	"GBBIT5m"
	anArray at: 111 put: ( self newInstruction: 111 forProcessor: aProcessor withArg: {5} tick: 12).

	"GBBIT6m"
	anArray at: 119 put: ( self newInstruction: 119 forProcessor: aProcessor withArg: {6} tick: 12).

	"GBBIT7m"
	anArray at: 127 put: ( self newInstruction: 127 forProcessor: aProcessor withArg: {7} tick: 12).
