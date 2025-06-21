#> api:get.nbt/selected_item/update
# SelectedItemを保存
# @within function api:get.nbt/selected_item/

## SelectedItemをコピー
    data modify storage temp: selectedItem set from entity @s SelectedItem

##
    execute if data storage temp: selectedItem run data modify storage dat: _.NBT.selectedItem.data set from storage temp: selectedItem
    execute unless data storage temp: selectedItem if data storage dat: _.NBT.selectedItem.data run data remove storage dat: _.NBT.selectedItem.data

## 一時使用storageを削除
    data remove storage temp: selectedItem
    data remove storage api:nbt selectedItem
