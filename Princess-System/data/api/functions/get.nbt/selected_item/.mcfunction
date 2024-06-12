#> api:get.nbt/selected_item/
# SelectedItemを保存
# @input as player
# @output storage api: SelectedItem
# @api

## 個人ストレージを呼ぶ
  function data.player:please
## 
  execute store success score #LeastTime Temp store result storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.SelectedItem.Time int 1 run time query gametime
  execute if score #LeastTime Temp matches 1 run function api:get.nbt/selected_item/update
## SelectedItemをコピー
  data modify storage api: SelectedItem set from storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.SelectedItem.Data
