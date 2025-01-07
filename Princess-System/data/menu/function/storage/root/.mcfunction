#> menu:storage/root/
#
# @within function menu:

#> ページ番号
# @private
	#declare score_holder #Page

## アイテムをセーブ
	scoreboard players operation #Page Temp = @s Menu
	execute store result storage temp: Page int 1 run scoreboard players operation #Page Temp %= #1000 Const
	function menu:storage/root/items/save with storage temp:

## いらないアイテムを消す
	###
		data remove storage api: Inventory[{Slot:10b}]
		data remove storage api: Inventory[{Slot:11b}]
		data remove storage api: Inventory[{Slot:12b}]
		data remove storage api: Inventory[{Slot:13b}]
		data remove storage api: Inventory[{Slot:14b}]
		data remove storage api: Inventory[{Slot:15b}]
		data remove storage api: Inventory[{Slot:16b}]

	###
		data remove storage api: Inventory[{Slot:19b}]
		data remove storage api: Inventory[{Slot:20b}]
		data remove storage api: Inventory[{Slot:21b}]
		data remove storage api: Inventory[{Slot:22b}]
		data remove storage api: Inventory[{Slot:23b}]
		data remove storage api: Inventory[{Slot:24b}]
		data remove storage api: Inventory[{Slot:25b}]

	###
		data remove storage api: Inventory[{Slot:28b}]
		data remove storage api: Inventory[{Slot:29b}]
		data remove storage api: Inventory[{Slot:30b}]
		data remove storage api: Inventory[{Slot:31b}]
		data remove storage api: Inventory[{Slot:32b}]
		data remove storage api: Inventory[{Slot:33b}]
		data remove storage api: Inventory[{Slot:34b}]


## 一時使用ScoreHolderをリセット
	scoreboard players reset #Page Temp

## 一時使用Storageを削除
	data remove storage temp: Page

## どこかをクリックしていたら
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{Back:1b}}] run return run function menu:home/root/open
	execute if entity @s[scores={Menu=5001..}] if items entity @s player.cursor *[minecraft:custom_data~{Menu:{PagePrev:1b}}] run return run function menu:storage/root/page/prev
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{PageNext:1b}}] run return run function menu:storage/root/page/next
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{StorageImportant:1b}}] run tellraw @s {"text":"[UI] このページは作成されていません","color":"gray"}
	execute if items entity @s player.cursor *[minecraft:custom_data~{Menu:{StorageMaterial:1b}}] run tellraw @s {"text":"[UI] このページは作成されていません","color":"gray"}

## 欠けていたら修復
	execute unless score #InvCount Temp matches 6 run function menu:_common/repair {Parent:"storage",Child:"root"}
