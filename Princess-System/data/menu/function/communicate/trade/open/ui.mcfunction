#> menu:communicate/trade/open/ui
# UIの初期設定
# @within function menu:communicate/trade/open/

## メニューID
	scoreboard players set @s Menu 7200

## 決定までの時間を設定
	scoreboard players set @s Trade.DecideTimer -1

## UI
	function #api:get.nbt/inventory

## UI以外のアイテムを消す
	execute if data storage api: Inventory[{Slot:0b}] run data remove storage api: Inventory[{Slot:0b}]
	execute if data storage api: Inventory[{Slot:1b}] run data remove storage api: Inventory[{Slot:1b}]
	execute if data storage api: Inventory[{Slot:2b}] run data remove storage api: Inventory[{Slot:2b}]
	execute if data storage api: Inventory[{Slot:3b}] run data remove storage api: Inventory[{Slot:3b}]
	execute if data storage api: Inventory[{Slot:4b}] run data remove storage api: Inventory[{Slot:4b}]
	execute if data storage api: Inventory[{Slot:5b}] run data remove storage api: Inventory[{Slot:5b}]
	execute if data storage api: Inventory[{Slot:6b}] run data remove storage api: Inventory[{Slot:6b}]
	execute if data storage api: Inventory[{Slot:7b}] run data remove storage api: Inventory[{Slot:7b}]
	execute if data storage api: Inventory[{Slot:8b}] run data remove storage api: Inventory[{Slot:8b}]
	execute if data storage api: Inventory[{Slot:101b}] run data remove storage api: Inventory[{Slot:101b}]
	execute if data storage api: Inventory[{Slot:102b}] run data remove storage api: Inventory[{Slot:102b}]
	execute if data storage api: Inventory[{Slot:103b}] run data remove storage api: Inventory[{Slot:103b}]
	execute if data storage api: Inventory[{Slot:104b}] run data remove storage api: Inventory[{Slot:104b}]
	execute if data storage api: Inventory[{Slot:-106b}] run data remove storage api: Inventory[{Slot:-106b}]

##
	function menu:_common/repair {Parent:"communicate",Child:"trade"}

## 空白Slotを作る
	loot replace entity @s inventory.5 loot menu:frame.light_gray
	loot replace entity @s inventory.6 loot menu:frame.light_gray
	loot replace entity @s inventory.7 loot menu:frame.light_gray
	loot replace entity @s inventory.14 loot menu:frame.light_gray
	loot replace entity @s inventory.15 loot menu:frame.light_gray
	loot replace entity @s inventory.16 loot menu:frame.light_gray
	loot replace entity @s inventory.23 loot menu:frame.light_gray
	loot replace entity @s inventory.24 loot menu:frame.light_gray
	loot replace entity @s inventory.25 loot menu:frame.light_gray
