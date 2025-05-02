#> asset.lib:dungeon/tick/marker/boss/
# ボス戦を開始する
# @within function asset.lib:dungeon/tick/marker/

## 資格石をコピー
	data modify storage temp: Stone append from entity @s Inventory[{components:{"minecraft:custom_data":{QualificationStone:1b}}}]

##
	execute unless data storage temp: Stone run function asset.lib:dungeon/tick/marker/boss/cant_enter

## 資格石があったら、入る
	execute if data storage temp: Stone run function asset.lib:dungeon/tick/marker/boss/tell/1

## 一時使用Storageを削除
	data remove storage temp: Stone
