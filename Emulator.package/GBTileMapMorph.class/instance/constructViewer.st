as yet unclassified
constructViewer
	| temp tempCol |
	temp := tileMap collect: [:each | each asMorph ].
	1 to: 32 do:[:row | 
		tempCol := PanelMorph new.
		tempCol layoutPolicy: RowLayout new.
		tempCol extent: 360@10.
		panel addMorph: tempCol.
		1 to: 32 do:[:col | | init | 
			init := (row-1)*32.
			cache at: (init + col) put: (temp at: ((init + col))).
			tempCol addMorph: (temp at: (init + col)).
			].
		
		].
	panel addMorph: (LabelMorph contents: tileMapName).
	
	