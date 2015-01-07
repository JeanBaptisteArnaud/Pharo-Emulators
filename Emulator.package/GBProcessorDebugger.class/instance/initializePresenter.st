as yet unclassified
initializePresenter 
	historySpec items: history.
	history := historySpec listItems.
	
	historySpec displayBlock: [:e | 
		e asArray]. 
	