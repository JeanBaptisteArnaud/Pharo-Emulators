drawing - background
forceUpdateBackground

   RAMTileMap forceUpdateTileMap0: bitBltPool0 using: cacheCalculatedTileMap  pattern: updateBackgroundDataList.
   RAMTileMap updateTileMap1: bitBltPool1 using: cacheCalculatedTileMap pattern: updateBackgroundDataList.
   bitBltPool0 do: [:bitblt | bitblt copyBits ].
   bitBltPool1 do: [:bitblt | bitblt copyBits ].