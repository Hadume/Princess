#> api:get.nbt/selected_item/
# SelectedItemを保存
# @input as player
# @output storage api: SelectedItem
# @within tag/function api:get.nbt/selected_item

## 個人ストレージを呼ぶ
	function #api:e_dat/please

##
	execute store success score #LeastTime Temp store result storage dat: _.NBT.SelectedItem.Time int 1 run time query gametime
	execute if score #LeastTime Temp matches 1 run function api:get.nbt/selected_item/update

## SelectedItemをコピー
	data modify storage api: SelectedItem set from storage dat: _.NBT.SelectedItem.Data
