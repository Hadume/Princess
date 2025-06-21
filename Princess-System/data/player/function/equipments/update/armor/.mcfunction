#> player:equipments/update/armor/
# 装備を更新
# @within function main:advancements/inventory_changed

## slotを設定
    scoreboard players set #slot temp 0
    execute store result storage temp: slot int 1 run scoreboard players get #slot temp

##
    function player:equipments/update/armor/loop/ with storage temp:

## 一時使用scoreHolderをリセット
    scoreboard players reset #slot temp
    scoreboard players reset #changed temp

## 一時使用storageを削除
    data remove storage temp: slot
    data remove storage temp: Armor
