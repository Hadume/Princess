#> skilltree:move/common/
# スキルツリー移動共通処理
# @within function skilltree:move/*

## 座標保存
	summon marker ~ ~ ~ {Tags:["SkillPos","Init"]}
	### 向きも保存
		tp @e[type=marker,tag=Init] @s

	### IDを保存
		scoreboard players operation @e[type=marker,tag=Init] ID = @s ID

	### チャンクデータ、ディメンションを保存
		execute as @e[type=marker,tag=Init] at @s run function skilltree:move/common/marker


## ホットバーを保存
	### 各データ
		function #api:get.nbt/inventory

	### データを消しておく
		data remove storage dat: _.SkillTree.HotBar

	###
		execute if data storage api: {Inventory:[{Slot:0b}]} run data modify storage dat: _.SkillTree.HotBar append from storage api: Inventory[{Slot:0b}]
		execute if data storage api: {Inventory:[{Slot:1b}]} run data modify storage dat: _.SkillTree.HotBar append from storage api: Inventory[{Slot:1b}]
		execute if data storage api: {Inventory:[{Slot:2b}]} run data modify storage dat: _.SkillTree.HotBar append from storage api: Inventory[{Slot:2b}]
		execute if data storage api: {Inventory:[{Slot:3b}]} run data modify storage dat: _.SkillTree.HotBar append from storage api: Inventory[{Slot:3b}]
		execute if data storage api: {Inventory:[{Slot:4b}]} run data modify storage dat: _.SkillTree.HotBar append from storage api: Inventory[{Slot:4b}]
		execute if data storage api: {Inventory:[{Slot:5b}]} run data modify storage dat: _.SkillTree.HotBar append from storage api: Inventory[{Slot:5b}]
		execute if data storage api: {Inventory:[{Slot:6b}]} run data modify storage dat: _.SkillTree.HotBar append from storage api: Inventory[{Slot:6b}]
		execute if data storage api: {Inventory:[{Slot:7b}]} run data modify storage dat: _.SkillTree.HotBar append from storage api: Inventory[{Slot:7b}]
		execute if data storage api: {Inventory:[{Slot:8b}]} run data modify storage dat: _.SkillTree.HotBar append from storage api: Inventory[{Slot:8b}]

	### ホットバーを消す
		loot replace entity @s hotbar.0 loot skilltree:clear.hotbar


## 姿を見えなくする
	effect give @s invisibility infinite 0 true
