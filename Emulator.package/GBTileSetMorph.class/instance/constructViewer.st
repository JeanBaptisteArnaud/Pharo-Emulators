as yet unclassified
constructViewer
	| temp tempCol |
	temp := tileSet collect: [:each | each asMorph ].
	1 to: 16 do:[:row | 
		tempCol := PanelMorph new.
		tempCol layoutPolicy: RowLayout new.
		tempCol extent: 180@10.
		panel addMorph: tempCol.
		1 to: 16 do:[:col | | init | 
			init := (row-1)*16.
			cache at: (init + col) put: (temp at: ((init + col))).
			tempCol addMorph: (temp at: (init + col)).
			].
		
		].
	panel addMorph: (LabelMorph contents: tileMapName).
	
	