window  management
buildWindow
	| window fractions offsets |
	window := SystemWindow labelled: currentRom title.
	window model: self.
	fractions := #(0 0 1 1).
	offsets := #(0 0 0 0).
	window
		addMorph: self gbOpcodeListMorph 
			fullFrame:
				(LayoutFrame new 
					leftFraction: fractions first; 
					topFraction: fractions second;
					rightFraction: fractions third ; 
					bottomFraction: fractions fourth; 
					leftOffset: offsets first;
					topOffset: offsets second;
					rightOffset: offsets third;
					bottomOffset: offsets fourth).
	^ window