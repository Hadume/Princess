#> menu:storage/root/items/slot
# slotの調整
# @within function menu:storage/root/ui/items/main
# @private

## slotを計算
    execute store result score #slot temp run data get storage temp: pageItems[-22].slot
    execute store result storage temp: pageItems[-22].slot byte 1 run scoreboard players remove #slot temp 9

## データを移動
    data remove storage temp: pageItems[-1]

## ループ
    execute if data storage temp: pageItems[-22] run function menu:storage/root/items/slot
