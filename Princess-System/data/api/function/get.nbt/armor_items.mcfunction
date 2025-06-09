#> api:get.nbt/armor_items
# ArmorItemsを保存
# @input as player
# @output storage api: ArmorItems
# @within tag/function api:get.nbt/armor_items

## 個人ストレージを呼ぶ
    function #api:e_dat/please

##
    execute store success score #leastTime temp store result storage dat: _.NBT.armorItems.timeStamp long 1 run time query gametime
    execute if score #leastTime temp matches 1 run data modify storage dat: _.NBT.armorItems.data set from entity @s ArmorItems

## ArmorItemsをコピー
    data modify storage api:nbt armorItems set from storage dat: _.NBT.armorItems.data
