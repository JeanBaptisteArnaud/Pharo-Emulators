initialization
createMorphs
	| top middle down container containerleft containerright |
	top := self newRow.
	middle := self newRow.
	down := self newRow.
	
	top addMorph: t asMorph.
	middle 
		addMorph: r asMorph;
		addMorph: l asMorph.
	down addMorph:d asMorph.
	
	containerleft := self newColumn.
	containerleft addMorph: down; 
		addMorph: middle;
		addMorph: top.
	
	
	top := self newRow.
	middle := self newRow.
	down := self newRow.
	
	top addMorph: start asMorph.
	middle 
		addMorph: select asMorph;
		addMorph: a asMorph.
	down addMorph: b asMorph.
	
	containerright := self newColumn.
	containerright addMorph: down; 
		addMorph: middle;
		addMorph: top.
	
	container := self newRow.
	container addMorph: containerright.
	container addMorph: containerleft.
			
	
	
	self addMorph: container.
	