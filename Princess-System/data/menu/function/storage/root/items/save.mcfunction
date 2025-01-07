#> menu:storage/root/items/save
# アイテムを保存
# @within function menu:storage/root/

## 要らないデータを消す
	data remove storage api: Inventory[{components:{"minecraft:custom_data":{Menu:{}}}}]
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
	$data modify storage dat: _.Menu.Storage[$(Page)] set from storage api: Inventory
