#> api:get.nbt/size
# Sizeを保存
# @input as entity
# @output storage api: Size
# @within tag/function api:get.nbt/size

## 個人ストレージを呼ぶ
    function #api:e_dat/please

##
    execute store success score #LeastTime Temp store result storage dat: _.NBT.Size.Time int 1 run time query gametime
    execute if score #LeastTime Temp matches 1 run data modify storage dat: _.NBT.Size.Data set from entity @s Size

## Inventoryをコピー
    data modify storage api: Size set from storage dat: _.NBT.Size.Data
