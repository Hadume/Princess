#> api:get.nbt/armor_items
# ArmorItemsを保存
# @input as player
# @output storage api: ArmorItems
# @api

## 個人ストレージを呼ぶ
	function data.entity:please

##
	execute store success score #LeastTime Temp store result storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.ArmorItems.Time int 1 run time query gametime
	execute if score #LeastTime Temp matches 1 run data modify storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.ArmorItems.Data set from entity @s ArmorItems

## ArmorItemsをコピー
	data modify storage api: ArmorItems set from storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.ArmorItems.Data
