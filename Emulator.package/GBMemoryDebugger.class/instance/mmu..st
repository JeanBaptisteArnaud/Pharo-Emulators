accessing
mmu: anObject
	mmu := anObject.
	self mmu graphics tileSet0 makeDrawable .
	self mmu graphics tileSet1 makeDrawable.
	self mmu graphics tileMap1 makeDrawable.
	self mmu graphics tileMap0 makeDrawable.
	screen := self mmu screen.