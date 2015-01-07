as yet unclassified
defaultSpec
	<spec>
	
	
	^ SpecLayout composed
		add: #tileSet1 origin: 0.0@0.10 corner: 0.50@0.10;
		add: #tileSet0  origin: 0.0@0.30 corner: 0.50@0.30;
		addVSplitter;
		yourself
	