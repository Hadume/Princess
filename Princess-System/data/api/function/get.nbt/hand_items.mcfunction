#> api:get.nbt/hand_items
# HandItemsを保存
# @input as player
# @output storage api: HandItems
# @within tag/function api:get.nbt/hand_items

## 個人ストレージを呼ぶ
	function #api:e_dat/please

##
	execute store success score #LeastTime Temp store result storage dat: _.NBT.HandItems.Time int 1 run time query gametime
	execute if score #LeastTime Temp matches 1 run data modify storage dat: _.NBT.HandItems.Data set from entity @s HandItems

## HandItemsをコピー
	data modify storage api: HandItems set from storage dat: _.NBT.HandItems.Data
