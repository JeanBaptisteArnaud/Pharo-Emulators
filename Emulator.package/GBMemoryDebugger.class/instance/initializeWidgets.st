as yet unclassified
initializeWidgets
	memorySpec :=  self instantiate: MultiColumnListModel.
	memorySpec allowToSelect: false.
	
	tab := PluggableTabBarMorph on: self.
	tab width: 500.
	tab color: Color white darker darker.
	self constructAllTabulation.