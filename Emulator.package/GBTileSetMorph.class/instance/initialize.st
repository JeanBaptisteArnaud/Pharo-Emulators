as yet unclassified
initialize 
	panel := PanelMorph new.
	cache := Array new: 256.
	panel layoutPolicy: TableLayout new.
	panel extent: 180@180"(160 + 20 padding)".
	