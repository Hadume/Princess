#> api:get.nbt/selected_item/update
# SelectedItemを保存
# @within function api:get.nbt/selected_item/

## SelectedItemをコピー
	data modify storage temp: SelectedItem set from entity @s SelectedItem

##
	execute if data storage temp: SelectedItem run data modify storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.SelectedItem.Data set from storage temp: SelectedItem
	execute unless data storage temp: SelectedItem if data storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.SelectedItem.Data run data remove storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.SelectedItem.Data

## 一時使用Storageを削除
	data remove storage temp: SelectedItem
	data remove storage api: SelectedItem
