generating
mergeSubclasses: anCollection into: aSymbol
	| string class string2 sbool ssbool |
	string := 'createExtendedOpCodesInto: anArray withProcessor: aProcessor', Character cr asString, Character tab asString.
	string2 := 'createOpCodesInto: anArray withProcessor: aProcessor', Character cr asString, Character tab asString.
	sbool := false.	
	ssbool := false.	

	anCollection do:[:e | 
		sbool := true.
		(e respondsTo: #createExtendedOpCodesInto:withProcessor:) ifTrue: 
			[string := string, '"', e name asString,'"',Character cr asString, Character tab asString.
			string := string,( (e class methodDict at: #createExtendedOpCodesInto:withProcessor:) getSource copyFrom: 55 to: 			(e class methodDict at: #createExtendedOpCodesInto:withProcessor:) getSource size ), Character cr asString, 			Character cr asString, Character tab asString].
		
	(e respondsTo: #createOpCodesInto:withProcessor:) ifTrue: [   
		ssbool := true.
			
			string2 := string2, '"', e name asString,'"',Character cr asString, Character tab asString.
			string2 := string2,( (e class methodDict at: #createOpCodesInto:withProcessor:) getSource copyFrom: 55 to: (e class 			methodDict at: #createOpCodesInto:withProcessor:) getSource size ), Character cr asString, Character cr asString, 			Character tab asString]].
	

	class := self subclass: aSymbol
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Emulator-Proc-GB-Other'.

	sbool ifTrue:[class class compile: string.].
	ssbool ifTrue:[class class compile: string2.].
	
	
	anCollection do:[:e | Smalltalk removeClassNamed: e printString].