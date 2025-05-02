#> asset.lib:dungeon/get.id
#
# @within function asset.lib:dungeon/**

## ダンジョン番号を取得
	scoreboard players operation #DungeonID Temp = @s Dungeon
	scoreboard players operation #DungeonMisc Temp = #DungeonID Temp

## ダンジョンID
	scoreboard players operation #DungeonID Temp /= #10 Const
	scoreboard players operation #DungeonID Temp *= #10 Const
	execute store result storage asset:dungeon ID int 1 run scoreboard players get #DungeonID Temp

## ボス部屋番号
	scoreboard players operation #DungeonMisc Temp %= #10 Const
	execute store result storage asset:dungeon Boss int 1 run scoreboard players get #DungeonMisc Temp
