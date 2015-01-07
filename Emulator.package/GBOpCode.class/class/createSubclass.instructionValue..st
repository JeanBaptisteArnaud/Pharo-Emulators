generating
createSubclass: aName instructionValue:  integer
	| class | 
	class := self subclass: aName
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Emulator-Proc-GB-ToCheck'.

	(class  respondsTo: #createOpCodesInto:withProcessor: )
		ifFalse:[
		class class compile: 'createOpCodesInto: anArray withProcessor: aProcessor', Character cr asString, Character tab asString,
		'anArray at: ', integer asString, ' put: ( self newInstruction: ',integer asString,' forProcessor: aProcessor withArg: { }).'.]
	
		ifTrue:[class class compile: ((class class methodDict at: #createOpCodesInto:withProcessor:) getSource, Character cr asString, Character tab asString,
		'anArray at: ', integer asString, ' put: ( self newInstruction: ',integer asString,' forProcessor: aProcessor withArg: { }).'). ].