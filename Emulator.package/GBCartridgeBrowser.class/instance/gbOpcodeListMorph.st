morph creation
gbOpcodeListMorph
	^PluggableListMorph 
		on: currentRom 
 		list: #opCodeList 
		selected: nil 
		changeSelected: nil
		menu: nil 
		keystroke: nil.