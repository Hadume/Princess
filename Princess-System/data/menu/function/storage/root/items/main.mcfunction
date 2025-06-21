#> menu:storage/root/items/main
#
# @within function menu:storage/root/items/

## ページが無かったら、ページを作成
    $execute unless data storage dat: _.menu.storage[$(page)] run data modify storage dat: _.menu.storage append value []

## ページデータをコピー
    $data modify storage temp: pageItems set from storage dat: _.menu.storage[$(page)]

## slotの調整
    data modify storage temp: pageItems append from storage menu: Blanks21[]
    execute if data storage temp: pageItems[-22] run function menu:storage/root/items/slot

## データを渡す
    execute in overworld run data remove block 0 -64 0 Items
    execute in overworld run data modify block 0 -64 0 Items append from storage temp: pageItems[]
    execute in overworld run loot replace entity @s inventory.0 27 mine 0 -64 0 debug_stick

## 一時使用scoreHolderをリセット
    scoreboard players reset #slot temp

## 一時使用storageを削除
    data remove storage temp: pageItems
