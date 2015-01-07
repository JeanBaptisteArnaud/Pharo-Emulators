as yet unclassified
defaultSpec
	<spec>
	
	
	^ SpecLayout composed
		add: #tab origin: 0@0 corner: 0.55@0.05;
		add: #memorySpec origin: 0@0.05 corner: 0.55@1;
		addVSplitter;
		add: #morphTileSet0 origin: 0.60@0.10 corner: 0.75@0.20;
		add: #morphTileSet1 origin: 0.75@0.10 corner: 0.90@0.20;
		add: #morphTileMap0 origin: 0.60@0.35 corner: 0.90@0.55;
		add: #morphTileMap1 origin: 0.60@0.70 corner: 0.90@0.90;
		yourself
	