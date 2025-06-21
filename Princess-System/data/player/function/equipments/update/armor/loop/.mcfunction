#> player:equipments/update/armor/loop/
# 装備を更新
# @within function player:equipments/update/armor/
# @private

## ループを終了
    execute if score #slot temp matches 4.. run return 1

## 装備データを移行
    $execute if data storage api: Inventory[{slot:10$(slot)b}] run data modify storage temp: Armor set from storage api: Inventory[{slot:10$(slot)b}]
    $execute unless data storage api: Inventory[{slot:10$(slot)b}] run data modify storage temp: Armor set value {}

## 装備が変わっているかを確認
    $execute store success score #changed temp run data modify storage dat: _.Armor[$(slot)] set from storage temp: Armor

## 変わっていたら、Statsを更新
    execute if score #changed temp matches 1 run function player:equipments/update/armor/loop/parts/

## slotを更新
    scoreboard players add #slot temp 1
    execute store result storage temp: slot int 1 run scoreboard players get #slot temp

## ループ
    function player:equipments/update/armor/loop/ with storage temp:
