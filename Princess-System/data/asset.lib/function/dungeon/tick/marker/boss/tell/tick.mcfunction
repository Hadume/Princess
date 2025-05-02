#> asset.lib:dungeon/tick/marker/boss/tell/tick
# ボス戦
# @within function asset.lib:dungeon/tick/player/main

## スコアをコピー
	scoreboard players operation #DungeonAnimation Temp = @s DungeonAnimation

## スコアを減らす
	scoreboard players remove #DungeonAnimation Temp 1

## 演出
	execute if score #DungeonAnimation Temp matches 20 run function asset.lib:dungeon/tick/marker/boss/tell/2
	execute if score #DungeonAnimation Temp matches ..0 run function asset.lib:dungeon/tick/marker/boss/tell/3

## スコアを返す
	scoreboard players operation @s DungeonAnimation = #DungeonAnimation Temp

## 一時使用ScoreHolderをリセット
	scoreboard players reset #DungeonAnimation Temp
