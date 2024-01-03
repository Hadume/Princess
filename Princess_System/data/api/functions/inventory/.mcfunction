#> api:inventory/
# Inventoryを保存
# @input as player
# @output storage api: Inventory
# @public

## 個人ストレージを呼ぶ
  function #oh_my_dat:please
## 
  execute store success score $LeastTime Temp store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.Inventory.Time int 1 run time query gametime
  execute if score $LeastTime Temp matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.Inventory.Data set from entity @s Inventory
## Inventoryをコピー
  data modify storage api: Inventory set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.Inventory.Data
