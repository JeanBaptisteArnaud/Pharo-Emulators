loop
screenLoop

		| array loop |
		array := {[self mode1].	[self mode2]. [self mode3]. [self mode4].}.
		loop:={	3. 4. 4. 1. 1. 1.
				3. 4. 4. 1. 1. 1.
				3. 4. 4. 1. 1. 1.
				3. 4. 4. 1. 1. 1.
				3. 4. 4. 1. 1. 1.
				3. 4. 4. 1. 1. 1.
				2. 2. 2. 2. 2. 2.
				2. 2. 2. 2. 2. 2.
				2. 2. 3. 4. 4. 1. 1. 1.}.
		stop := false.		
		^[[stop] whileFalse:[loop do: [:e | (array at: e) value]]. process yield.] 
				newProcess name: 'ScreenLoop';
					priority: 35;
					yourself.
			