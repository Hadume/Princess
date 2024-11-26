#> api:get.nbt/armor_items
# ArmorItemsを保存
# @input as player
# @output storage api: ArmorItems
# @within tag/function api:get.nbt/armor_items

## 個人ストレージを呼ぶ
	function #api:e_dat/please

##
	execute store success score #LeastTime Temp store result storage dat: _.NBT.ArmorItems.Time int 1 run time query gametime
	execute if score #LeastTime Temp matches 1 run data modify storage dat: _.NBT.ArmorItems.Data set from entity @s ArmorItems

## ArmorItemsをコピー
	data modify storage api: ArmorItems set from storage dat: _.NBT.ArmorItems.Data
