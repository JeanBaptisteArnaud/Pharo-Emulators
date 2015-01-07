as yet unclassified
refresh
	specialRegisterStore keysDo: [:e | 
		(specialRegisterMorph at: e)
		label: e,' : ',(specialRegisterStore at: e) value asString.  ].