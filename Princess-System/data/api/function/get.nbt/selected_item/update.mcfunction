#> api:get.nbt/selected_item/update
# SelectedItemを保存
# @within function api:get.nbt/selected_item/

## SelectedItemをコピー
	data modify storage temp: SelectedItem set from entity @s SelectedItem

##
	execute if data storage temp: SelectedItem run data modify storage dat: _.NBT.SelectedItem.Data set from storage temp: SelectedItem
	execute unless data storage temp: SelectedItem if data storage dat: _.NBT.SelectedItem.Data run data remove storage dat: _.NBT.SelectedItem.Data

## 一時使用Storageを削除
	data remove storage temp: SelectedItem
	data remove storage api: SelectedItem
