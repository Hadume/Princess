#> asset.lib:dungeon/tick/marker/boss/tell/1
# ボス戦に入る前の演出、1
# @within function asset.lib:dungeon/tick/marker/boss/

## 資格石を消す
	clear @s *[custom_data={QualificationStone:1b}]

## ボス戦中です、スコア
	scoreboard players operation @s DungeonBoss = #DungeonMisc Temp

## 目の前を暗くする
	effect give @s darkness 6 0 true

## 伝える
	tellraw @s {"text": "\nボスの気配がする！","bold": true}

## 音
	playsound block.portal.travel block @s ~ ~ ~ 0.75 1.0 0.0

## 次
	schedule function asset.lib:dungeon/tick/marker/boss/tell/2 2s append
