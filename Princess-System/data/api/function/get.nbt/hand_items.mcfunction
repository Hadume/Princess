#> api:get.nbt/hand_items
# HandItemsを保存
# @input as player
# @output storage api: HandItems
# @within tag/function api:get.nbt/hand_items

## 個人ストレージを呼ぶ
    function #api:e_dat/please

##
    execute store success score #leastTime temp store result storage dat: _.NBT.handItems.timeStamp long 1 run time query gametime
    execute if score #leastTime temp matches 1 run data modify storage dat: _.NBT.handItems.data set from entity @s HandItems

## HandItemsをコピー
    data modify storage api:nbt handItems set from storage dat: _.NBT.handItems
