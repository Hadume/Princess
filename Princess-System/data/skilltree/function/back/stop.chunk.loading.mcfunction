#> skilltree:back/stop.chunk.loading
# チャンクの読み込みを止める
# @within function skilltree:back/

## スコアをコピー
	scoreboard players operation #Chunk.X Temp = @s Chunk.X
	scoreboard players operation #Chunk.Z Temp = @s Chunk.Z
	scoreboard players operation #Chunk.Dimension Temp = @s Chunk.Dimension

## そのチャンクに他にforceloadが必要ないかを確認
	execute as @e[tag=!This] unless data storage temp: {ChunkLoaded:1b} if score @s Chunk.X = #Chunk.X Temp if score @s Chunk.Z = #Chunk.Z Temp if score @s Chunk.Dimension = #Chunk.Dimension Temp run data modify storage temp: ChunkLoaded set value 1b

##
	execute unless data storage temp: {ChunkLoaded:1b} run forceload remove ~ ~ ~ ~

## 座標記録用Markerを消す
	kill @s

## 一時使用ScoreHolderをリセット
	scoreboard players reset #Chunk.X Temp
	scoreboard players reset #Chunk.Z Temp
	scoreboard players reset #Chunk.Dimension Temp

## 一時使用Storageを削除
	data remove storage temp: ChunkLoaded
