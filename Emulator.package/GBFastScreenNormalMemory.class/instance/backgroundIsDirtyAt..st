buffering
backgroundIsDirtyAt: tilesIndex
	backgroundDirty := true.
      updateBackgroundDataList at: (tilesIndex  + 1) put: true.
