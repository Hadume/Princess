#> asset.lib:dungeon/player/tick/boss/enter
# ボス戦に入る前の演出
# @within function asset.lib:dungeon/player/tick/main

## スコアをコピー
	scoreboard players operation #DungeonBossEnter Temp = @s DungeonBossEnter

## スコアを減らす
	scoreboard players remove #DungeonBossEnter Temp 1

## 演出
	execute if score #DungeonBossEnter Temp matches 40 run function asset.lib:dungeon/player/boss/enter/-ing/1
	execute if score #DungeonBossEnter Temp matches 20 run function asset.lib:dungeon/player/boss/enter/-ing/2
	execute if score #DungeonBossEnter Temp matches ..0 run function asset.lib:dungeon/player/boss/enter/-ing/3

## スコアを返す
	scoreboard players operation @s DungeonBossEnter = #DungeonBossEnter Temp

## 一時使用ScoreHolderをリセット
	scoreboard players reset #DungeonBossEnter Temp
