#> menu:storage/root/items/slot
# Slotの調整
# @within function menu:storage/root/ui/items/main
# @private

## Slotを計算
    execute store result score #Slot Temp run data get storage temp: PageItems[-22].Slot
    execute store result storage temp: PageItems[-22].Slot byte 1 run scoreboard players remove #Slot Temp 9

## データを移動
    data remove storage temp: PageItems[-1]

## ループ
    execute if data storage temp: PageItems[-22] run function menu:storage/root/items/slot
