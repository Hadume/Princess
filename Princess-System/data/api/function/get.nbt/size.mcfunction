#> api:get.nbt/size
# sizeを保存
# @input as entity
# @output storage api: size
# @within tag/function api:get.nbt/size

## 個人ストレージを呼ぶ
    function #api:e_dat/please

##
    execute store success score #leastTime temp store result storage dat: _.NBT.size.timeStamp long 1 run time query gametime
    execute if score #leastTime temp matches 1 run data modify storage dat: _.NBT.size.data set from entity @s Size

## Inventoryをコピー
    data modify storage api:nbt size set from storage dat: _.NBT.size.data
