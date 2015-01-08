building
debuggerStructureIn: browser
	
	browser
		row: [ :row | 
					row
						column: #stack span: 2;
						column: [ :column |
							column 
								row: [ :row2 | 
									row2
										column: #code;
										column: #stream ];
								row: #workspace ] span: 3 ];
		row: #inspector.