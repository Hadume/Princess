#> asset.lib:dungeon/marker/tick
# ダンジョン内でのマーカーの処理
# @within function main:tick/

## ダンジョンIDを取得
	function asset.lib:dungeon/get.id

## ダンジョンに入場する
	execute if score #DungeonMisc Temp matches 6 as @a[distance=..2] at @s run function #asset.lib:dungeon/enter

## ダンジョンから退出する
	execute if score #DungeonMisc Temp matches 7 as @a[distance=..2] at @s run function #asset.lib:dungeon/exit

## ボス戦を開始する
	execute if score #DungeonMisc Temp matches 1..3 as @a[distance=..2.5] at @s run function asset.lib:dungeon/player/boss/enter/

## 一時使用ScoreHolderをリセット
	scoreboard players reset #DungeonID Temp
	scoreboard players reset #DungeonMisc Temp
