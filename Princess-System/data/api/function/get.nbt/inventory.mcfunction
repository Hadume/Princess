#> api:get.nbt/inventory
# Inventoryを保存
# @input as player
# @output storage api: Inventory
# @within tag/function api:get.nbt/inventory

## 個人ストレージを呼ぶ
	function #api:e_dat/please

##
	execute store success score #LeastTime Temp store result storage dat: _.NBT.Inventory.Time int 1 run time query gametime
	execute if score #LeastTime Temp matches 1 run data modify storage dat: _.NBT.Inventory.Data set from entity @s Inventory

## Inventoryをコピー
	data modify storage api: Inventory set from storage dat: _.NBT.Inventory.Data
