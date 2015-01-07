initialize
initializeWidgets
	memory :=  self instantiate: NewListModel.
	debugBar at: #Bstep put: self newButton.
	debugBar at: #Bproceed put: self newButton.
	debugBar at: #Bstop put: self newButton.
	registerWatcher := GBCRegisterWatcher newForGB: gb.
	
	memory handlesDoubleClick: true. 
	memory icons: [:e | 
		(breakpoints includes: e) 
			ifTrue:[Smalltalk ui icons alertIcon] 
			ifFalse:[]
			].
	memory doubleClickAction: [:e | 
		self breakpoint: e] 