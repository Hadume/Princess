#> asset.lib:dungeon/tick/marker/
# ダンジョン内でのマーカーの処理
# @within function main:tick/

## ダンジョン番号を取得
	scoreboard players operation #DungeonID Temp = @s Dungeon
	scoreboard players operation #DungeonMisc Temp = #DungeonID Temp
	### ダンジョンID
		scoreboard players operation #DungeonID Temp /= #10 Const
		execute store result storage asset:dungeon ID int 10 run scoreboard players get #DungeonID Temp

	### ボス部屋番号
		scoreboard players operation #DungeonMisc Temp %= #10 Const


## ダンジョンに入場する
	execute if score #DungeonMisc Temp matches 6 as @a[distance=..2] at @s run function asset.lib:dungeon/tick/marker/enter

## ダンジョンから退出する
	execute if score #DungeonMisc Temp matches 7 as @a[distance=..2] at @s run function asset.lib:dungeon/tick/marker/exit

## 一時使用ScoreHolderをリセット
	scoreboard players reset #DungeonID Temp
	scoreboard players reset #DungeonMisc Temp
