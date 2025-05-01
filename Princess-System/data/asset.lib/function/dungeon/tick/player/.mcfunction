#> asset.lib:dungeon/tick/player/
# ダンジョン内でのプレイヤーの処理
# @within function main:tick/player

## ダンジョン番号を取得
	scoreboard players operation #DungeonID Temp = @s Dungeon
	scoreboard players operation #DungeonBossID Temp = #DungeonID Temp
	### ダンジョンID
		scoreboard players operation #DungeonID Temp /= #10 Const
		scoreboard players operation #DungeonID Temp *= #10 Const
		execute store result storage asset:dungeon ID int 1 run scoreboard players get #DungeonID Temp

	### ボス部屋番号
		scoreboard players operation #DungeonBossID Temp %= #10 Const
		execute store result storage asset:dungeon Boss int 1 run scoreboard players get #DungeonBossID Temp


## メイン処理を実行
	function asset.lib:dungeon/tick/player/main with storage asset:dungeon

## 一時使用ScoreHolderをリセット
	scoreboard players reset #DungeonID Temp
	scoreboard players reset #DungeonBossID Temp
