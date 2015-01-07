as yet unclassified
ROM: originalRom
	| dict bank |
	dict :=	Array new:1.
	bank :=	GBBank new: originalRom.
	dict at: 1 put: bank.
	^self new
		type: 'ROM';
		bankDictionary: dict;
		yourself