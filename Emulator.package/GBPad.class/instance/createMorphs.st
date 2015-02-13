initialization
createMorphs
	| top middle down container |
	top := self newRow.
	middle := self newRow.
	down := self newRow.
	
	top addMorph: t asMorph.
	middle 
		addMorph: r asMorph;
		addMorph: l asMorph.
	down addMorph:d asMorph.
	
	container := self newColumn.
	container addMorph: down; 
		addMorph: middle;
		addMorph: top.
	
	self addMorph: container.