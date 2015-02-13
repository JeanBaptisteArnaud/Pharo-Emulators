initialization
newRow
	^AlignmentMorph newRow
		cellPositioning: #center;
		color: Color transparent;
		listCentering: #center;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		layoutInset: 0;
		yourself.
		