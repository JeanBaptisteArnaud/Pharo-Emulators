as yet unclassified
tileAt: index
	"1 = self class beginAddress + 15"
	"2 = self class beginAddress+ ((2-1)*16)"
	"16r8000 =  32768"
	|begin|
	begin := (((index-1)*16) + 1).
	^(Array new: 16)
		at: 1 put: (self at: begin);
		 at: 2 put: (self at:  begin+ 1);
		 at: 3 put: (self at:begin+ 2);
		 at: 4 put:(self at: begin+ 3);
		 at: 5 put: (self at:begin+ 4);
		 at: 6 put: (self at:begin+ 5);
		 at: 7 put: (self at:begin+ 6);
		 at: 8 put: (self at:begin+ 7);
		 at: 9 put: (self at:begin+ 8);
		 at: 10 put: (self at:begin+ 9);
		 at: 11 put: (self at:begin+ 10);
		 at: 12 put: (self at:begin+ 11);
		 at: 13 put: (self at:begin+ 12);	
		 at: 14 put: (self at:begin+ 13);
		 at: 15 put: (self at:begin+ 14);
		 at: 16 put: (self at:begin+ 15);
		 yourself	
	
