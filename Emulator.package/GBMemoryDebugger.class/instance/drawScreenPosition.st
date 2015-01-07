as yet unclassified
drawScreenPosition
	 | s  x y |
	
	x := screen rb: 16rFF43. 
	y := screen rb: 16rFF42. 

	surface drawDuring: [:can |		
		s :=  can setStrokePaint: Color green.
		s width: 1.
		can drawShape: (
			can createPath: [:path |
				path 
					absolute;
					moveTo: x@y;
					lineTo: (x+166)@y;
					lineTo: (x+166)@(y+144);
					lineTo: x@(y+144);
					lineTo: x@y.
			])].
