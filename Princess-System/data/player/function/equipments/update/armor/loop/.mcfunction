#> player:equipments/update/armor/loop/
# 装備を更新
# @within function player:equipments/update/armor/
# @private

## ループを終了
    execute if score #Slot Temp matches 4.. run return 1

## 装備データを移行
    $execute if data storage api: Inventory[{Slot:10$(Slot)b}] run data modify storage temp: Armor set from storage api: Inventory[{Slot:10$(Slot)b}]
    $execute unless data storage api: Inventory[{Slot:10$(Slot)b}] run data modify storage temp: Armor set value {}

## 装備が変わっているかを確認
    $execute store success score #Changed Temp run data modify storage dat: _.Armor[$(Slot)] set from storage temp: Armor

## 変わっていたら、Statsを更新
    execute if score #Changed Temp matches 1 run function player:equipments/update/armor/loop/parts/

## Slotを更新
    scoreboard players add #Slot Temp 1
    execute store result storage temp: Slot int 1 run scoreboard players get #Slot Temp

## ループ
    function player:equipments/update/armor/loop/ with storage temp:
