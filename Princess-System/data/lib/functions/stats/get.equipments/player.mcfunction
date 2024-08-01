#> lib:stats/get.equipments/player
# プレイヤーの装備データを取得
# @within function lib:stats/main

## データを取得
	function api:get.nbt/inventory
	function api:get.nbt/selected_item/
## 各装備を変更
	### 装備
		execute if data storage api: Inventory[{Slot:103b}] run data modify storage lib:temp Armor append from storage api: Inventory[{Slot:103b}]
		execute if data storage api: Inventory[{Slot:102b}] run data modify storage lib:temp Armor append from storage api: Inventory[{Slot:102b}]
		execute if data storage api: Inventory[{Slot:101b}] run data modify storage lib:temp Armor append from storage api: Inventory[{Slot:101b}]
		execute if data storage api: Inventory[{Slot:100b}] run data modify storage lib:temp Armor append from storage api: Inventory[{Slot:100b}]
	### 武器
		execute if data storage api: SelectedItem run data modify storage lib:temp Weapon append from storage api: SelectedItem
		execute if data storage api: Inventory[{Slot:-106b}] run data modify storage lib:temp Weapon append from storage api: Inventory[{Slot:-106b}]
