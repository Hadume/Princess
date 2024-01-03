#> api:selecteditem/update
# SelectedItemを保存
# @within function api:selecteditem/

## SelectedItemをコピー
  data modify storage api.temp: SelectedItem set from entity @s SelectedItem
## 
  execute if data storage api.temp: SelectedItem run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.SelectedItem.Data set from storage api.temp: SelectedItem
  execute unless data storage api.temp: SelectedItem if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.SelectedItem.Data run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.SelectedItem.Data
## 一時使用Storageを削除
  data remove storage api.temp: SelectedItem
  data remove storage api: SelectedItem
