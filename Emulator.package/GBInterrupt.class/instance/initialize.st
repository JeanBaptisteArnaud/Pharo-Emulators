as yet unclassified
initialize 
array := Array new: 33.
0 to: 32 do: [ :index |
	((index bitAt: 1) = 1) ifTrue: [ array at: index + 1 put: #vblank] ifFalse: [ 
	((index bitAt: 2) = 1) ifTrue: [array at: index + 1 put: #stat ] ifFalse: [ 
	((index bitAt: 3) = 1) ifTrue: [array at: index + 1 put: #timer  ] ifFalse: [ 	
	((index bitAt: 4) = 1) ifTrue: [array at: index + 1 put: #serial  ] ifFalse: [ 
	((index bitAt: 5) = 1) ifTrue: [ array at: index + 1 put: #button   ] ifFalse: [ 	
	 array at: index + 1 put: #empty  
	]]]]]]
	   
