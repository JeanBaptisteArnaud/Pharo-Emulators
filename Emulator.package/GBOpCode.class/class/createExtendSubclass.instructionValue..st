generating
createExtendSubclass: aName instructionValue:  integer
	| class | 
	class := self subclass: aName
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Emulator-Proc-GB-Others'.

	(class  respondsTo: #createExtendedOpCodesInto:withProcessor: )
		ifFalse:[
		class class compile: 'createExtendedOpCodesInto: anArray withProcessor: aProcessor', Character cr asString, Character tab asString,
		'anArray at: ', integer asString, ' put: ( self newInstruction: ',integer asString,' forProcessor: aProcessor withArg: { }).'.]
	
	
		ifTrue:[class class compile: ((class class methodDict at: #createExtendedOpCodesInto:withProcessor:) getSource, Character cr asString, Character tab asString,
		'anArray at: ', integer asString, ' put: ( self newInstruction: ',integer asString,' forProcessor: aProcessor withArg: { }).'). ].
		
	
	