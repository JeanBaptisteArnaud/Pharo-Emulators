infrastructure
graphics
	 currentView := self cutTarget: mmu graphics IntoPieceOf: 16.
	 memorySpec items: currentView.
	 currentView := memorySpec listItems.
	 memorySpec refreshListItems.