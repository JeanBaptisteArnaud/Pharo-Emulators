as yet unclassified
initializeWidgets
	specialRegisterMorph := Dictionary new.
	specialRegisterStore keysDo: [:e | 
		specialRegisterMorph at: e put: ((self instantiate: LabelModel)
		label: e,' : ',(specialRegisterStore at: e) value asString;
		yourself).  ].