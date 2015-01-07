as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	"GBRST00"
	anArray at: 200 put: ( self newInstruction: 200 forProcessor: aProcessor withArg: {0} tick: 16).

	"GBRST08"
	anArray at: 208 put: ( self newInstruction: 208 forProcessor: aProcessor withArg: {8} tick: 16).

	"GBRST10"
	anArray at: 216 put: ( self newInstruction: 216 forProcessor: aProcessor withArg: {16} tick: 16).

	"GBRST18"
	anArray at: 224 put: ( self newInstruction: 224 forProcessor: aProcessor withArg: {24} tick: 16).

	"GBRST20"
	anArray at: 232 put: ( self newInstruction: 232 forProcessor: aProcessor withArg: {32} tick: 16).

	"GBRST28"
	anArray at: 240 put: ( self newInstruction: 240 forProcessor: aProcessor withArg: {40} tick: 16).

	"GBRST30"
	anArray at: 248 put: ( self newInstruction: 248 forProcessor: aProcessor withArg: {48} tick: 16).

	"GBRST16r38"
	anArray at: 256 put: ( self newInstruction: 256 forProcessor: aProcessor withArg: {56} tick: 16).

	