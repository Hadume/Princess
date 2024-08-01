#> api:get.nbt/hand_items
# HandItemsを保存
# @input as player
# @output storage api: HandItems
# @api

## 個人ストレージを呼ぶ
	function data.entity:please
##
	execute store success score #LeastTime Temp store result storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.HandItems.Time int 1 run time query gametime
	execute if score #LeastTime Temp matches 1 run data modify storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.HandItems.Data set from entity @s HandItems
## Inventoryをコピー
	data modify storage api: HandItems set from storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.HandItems.Data
