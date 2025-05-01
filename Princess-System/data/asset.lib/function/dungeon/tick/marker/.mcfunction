#> asset.lib:dungeon/tick/marker/
# ダンジョン内でのマーカーの処理
# @within function main:tick/

## ダンジョン番号を取得
	scoreboard players operation #DungeonID Temp = @s Dungeon
	scoreboard players operation #DungeonMisc Temp = #DungeonID Temp
	### ダンジョンID
		scoreboard players operation #DungeonID Temp /= #10 Const
		scoreboard players operation #DungeonID Temp *= #10 Const
		execute store result storage asset:dungeon ID int 1 run scoreboard players get #DungeonID Temp

	### ボス部屋番号
		scoreboard players operation #DungeonMisc Temp %= #10 Const
		execute store result storage asset:dungeon Boss int 1 run scoreboard players get #DungeonMisc Temp


## ダンジョンに入場する
	execute if score #DungeonMisc Temp matches 6 as @a[distance=..2] at @s run function #asset.lib:dungeon/enter

## ダンジョンから退出する
	execute if score #DungeonMisc Temp matches 7 as @a[distance=..2] at @s run function #asset.lib:dungeon/exit

## ボス戦を開始する
	execute if score #DungeonMisc Temp matches 1..3 as @a[distance=..2.5] at @s run function asset.lib:dungeon/tick/marker/boss/

## 一時使用ScoreHolderをリセット
	scoreboard players reset #DungeonID Temp
	scoreboard players reset #DungeonMisc Temp
