as yet unclassified
defaultSpec
	<spec>
	^ 	 SpecLayout composed
					newColumn: [ :c | c 	add: #memory] origin: 0@0 corner: 0.25@1;
					newColumn: [ :c | 
						c add: #screen.
						c newRow: [: r | self debuggerButtonsBar: r. ]] origin: 0.25@0 corner: 0.50@1;		
					newColumn: [ :c |  c add: #registerWatcher ] origin: 0.60@0 corner: 1@0.90 ;	
	yourself.