#> api:selecteditem/
# SelectedItemを保存
# @input as player
# @output storage api: SelectedItem
# @within * *:**

## 個人ストレージを呼ぶ
  function #oh_my_dat:please
## 
  execute store success score $LeastTime Temp store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.SelectedItem.Time int 1 run time query gametime
  execute if score $LeastTime Temp matches 1 run function api:selecteditem/update
## SelectedItemをコピー
  data modify storage api: SelectedItem set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.SelectedItem.Data
