#> api:get.nbt/inventory/
# Inventoryを保存
# @input as player
# @output storage api: Inventory
# @public

## 個人ストレージを呼ぶ
  function data.player:please
## 
  execute store success score #LeastTime Temp store result storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.Inventory.Time int 1 run time query gametime
  execute if score #LeastTime Temp matches 1 run data modify storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.Inventory.Data set from entity @s Inventory
## Inventoryをコピー
  data modify storage api: Inventory set from storage data:player _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.Inventory.Data
