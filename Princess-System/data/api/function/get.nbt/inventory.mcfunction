#> api:get.nbt/inventory
# Inventoryを保存
# @input as player
# @output storage api: Inventory
# @within tag/function api:get.nbt/inventory

## 個人ストレージを呼ぶ
    function #api:e_dat/please

##
    execute store success score #leastTime temp store result storage dat: _.NBT.inventory.timeStamp long 1 run time query gametime
    execute if score #leastTime temp matches 1 run data modify storage dat: _.NBT.inventory.data set from entity @s Inventory

## Inventoryをコピー
    data modify storage api:nbt inventory set from storage dat: _.NBT.inventory.data
