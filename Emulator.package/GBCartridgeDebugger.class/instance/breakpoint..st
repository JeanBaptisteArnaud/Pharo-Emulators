initialize
breakpoint: prout
	(breakpoints includes: memory selectedItem) 
		ifTrue:[breakpoints remove: memory selectedItem.
			gb uninstallBreakPointAt: memory selectedIndex.]
		ifFalse:[breakpoints add: memory selectedItem.
			gb installBreakPointAt: memory selectedIndex notifying: self.	].
	memory iconForItem: memory selectedItem at: memory selectedIndex.
	
	memory update: #iconForItem:at:.
	self needFullRebuild: true.
	memory items: memory listItems.