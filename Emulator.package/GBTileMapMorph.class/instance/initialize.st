as yet unclassified
initialize 
	panel := PanelMorph new.
	cache := Array new: 1024.
	panel layoutPolicy: TableLayout new.
	panel extent: 380@380"(160 + 20 padding)".
	