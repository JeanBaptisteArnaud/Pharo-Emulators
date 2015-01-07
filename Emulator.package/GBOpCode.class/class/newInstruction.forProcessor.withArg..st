creation
newInstruction: anInteger forProcessor: aProcessor withArg: argArray
	| inst cnt | 
	inst := self new
		instVarAt: 1 put: aProcessor;
		instVarAt: 2 put: anInteger;
		yourself.
	cnt := 4.
	argArray do:[:e | inst  instVarAt: cnt put: e. cnt := cnt + 1.].
	^inst