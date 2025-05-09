#> asset.lib:dungeon/player/boss/enter/-ing/
#
# @within function asset.lib:dungeon/player/boss/enter/

## 資格石を消す
	clear @s *[custom_data={QualificationStone:1b}]

## ボス戦中です、スコア
	scoreboard players operation @s Dungeon += #DungeonMisc Temp

## 目の前を暗くする
	effect give @s darkness 6 0 true

## ボス戦入るまでの演出
	scoreboard players set @s DungeonBossEnter 41

## 演出
	function asset.lib:dungeon/player/boss/enter/-ing/1
