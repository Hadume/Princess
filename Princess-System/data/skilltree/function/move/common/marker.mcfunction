#> skilltree:move/common/marker
# チャンクデータ、ディメンションデータを保存
# @within function skilltree:move/common/

## 座標を取得
	function #api:get.nbt/pos

## チャンクデータ
	execute store result score @s Chunk.X run data get storage api: Pos[0] 0.0625
	execute store result score @s Chunk.Z run data get storage api: Pos[2] 0.0625

## Dimension
	execute if dimension overworld run scoreboard players set @s Chunk.Dimension 0
	execute if dimension the_nether run scoreboard players set @s Chunk.Dimension -1
	execute if dimension the_end run scoreboard players set @s Chunk.Dimension 1

## Forceload
	forceload add ~ ~ ~ ~

## 初期化完了
	tag @s remove Init
