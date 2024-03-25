#> api:get.nbt/selected_item/update
# SelectedItemを保存
# @within function api:get.nbt/selected_item/

## SelectedItemをコピー
  data modify storage api.temp: SelectedItem set from entity @s SelectedItem
## 
  execute if data storage api.temp: SelectedItem run data modify storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.SelectedItem.Data set from storage api.temp: SelectedItem
  execute unless data storage api.temp: SelectedItem if data storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.SelectedItem.Data run data remove storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.SelectedItem.Data
## 一時使用Storageを削除
  data remove storage api.temp: SelectedItem
  data remove storage api: SelectedItem
