initialize
createBackgroundArray
	backgroundData := Array new: 513.
	1 to: backgroundData size do: [:e | backgroundData at: e put:  (Array new: 513 withAll: 0).  ]