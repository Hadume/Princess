#> menu:
# インベントリUIを更新
# @within function main:advancements/inventory_changed

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

## UIのアイテムの数を取得
	execute store result score #InvCount Temp if data storage api: Inventory[{components:{"minecraft:custom_data":{Menu:{}}}}]

## ページごとの動作
	execute if entity @s[scores={Menu=0..999}] run return run function menu:home/
	execute if entity @s[scores={Menu=2000..2999}] run return run function menu:equipment/
	execute if entity @s[scores={Menu=4000..4999}] run return run function menu:status/
	execute if entity @s[scores={Menu=5000..5999}] run return run function menu:storage/
	execute if entity @s[scores={Menu=7000..7999}] run return run function menu:communicate/
