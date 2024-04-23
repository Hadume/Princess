#> api:get.nbt/size/
# Inventoryを保存
# @input as entity
# @output storage api: Size
# @public

## 個人ストレージを呼ぶ
  function data.entity:please
## 
  execute store success score #LeastTime Temp store result storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.Size.Time int 1 run time query gametime
  execute if score #LeastTime Temp matches 1 run data modify storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.Size.Data set from entity @s Size
## Inventoryをコピー
  data modify storage api: Size set from storage data:entity _[-4][-4][-4][-4][-4][-4][-4][-4].NBT.Size.Data
