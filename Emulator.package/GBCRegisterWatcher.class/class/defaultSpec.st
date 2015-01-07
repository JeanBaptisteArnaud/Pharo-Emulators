as yet unclassified
defaultSpec
	<spec>
	^ 	 SpecLayout composed
					newRow: [ :r | 
						r newColumn: [:c |
							 c add: #a.
 							 c add: #b.
		  					 c add: #c.
		  					 c add: #d.
		 					 c add: #e.
		 					 c add: #f.
		 					 c add: #h.
		 					 c add: #l.] origin: 0@0 corner: 0.15@1.
						r newColumn: [:c |
							 c add: #af.
 							 c add: #bc.
		  					 c add: #de.
		  					 c add: #hl.
							 c add: #sp.
		  					 c add: #pc.
							] origin: 0.15@0 corner: 0.30@1.
						r newColumn: [:c |
							 c add: #FF00.
 							 c add: #FF04.
		  					 c add: #FF05.
		  					 c add: #FF06.
		 					 c add: #FF07.
		 					 c add: #FF0F.
		 					 c add: #FF40.
		 					 c add: #FF41.
		 					 c add: #FF42.] origin: 0.30@0 corner: 0.65@1.
						r newColumn: [:c |
							 c add: #FF43.
							 c add: #FF44.
							 c add: #FF45.
		 					 c add: #FF46.
		 					 c add: #FF47.
		 					 c add: #FF48.
		 					 c add: #FF49.
		 					 c add: #FF4A.
		 					 c add: #FF4B.
		 					 c add: #FFFF]origin: 0.60@0 corner: 1@1.
						];
						yourself.