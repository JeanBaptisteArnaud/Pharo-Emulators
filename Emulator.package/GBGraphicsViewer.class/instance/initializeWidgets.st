as yet unclassified
initializeWidgets
	tileSet0 := (GBTileSetMorph new 
		tileMapName: 'tileMap0';
		tileSet: gb screen TileSets0Forms;
		yourself) asSpecAdapter.
		
	tileSet1 := (GBTileSetMorph new 
		tileMapName: 'tileMap1';
		tileSet: gb screen TileSets1Forms;
		yourself) asSpecAdapter.