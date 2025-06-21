#> menu:-common/return.items/main.loop
#
# @within function menu:-common/return.items/
# @private

## slotを消す
    data remove storage api: Inventory[-1].slot

## アイテムをシュルカーボックスに
    execute in overworld run data remove block 0 -64 0 Items
    execute in overworld run data modify storage api: Inventory[-1].slot set value 0b
    execute in overworld run data modify block 0 -64 0 Items append from storage api: Inventory[-1]

## アイテムを返す
    execute if entity @s[nbt={Inventory:[{slot:0b},{slot:1b},{slot:2b},{slot:3b},{slot:4b},{slot:5b},{slot:6b},{slot:7b},{slot:8b}]}] in overworld run loot spawn ~ ~ ~ mine 0 -64 0 debug_stick
    execute if entity @s[nbt=!{Inventory:[{slot:0b},{slot:1b},{slot:2b},{slot:3b},{slot:4b},{slot:5b},{slot:6b},{slot:7b},{slot:8b}]}] in overworld run loot give @s mine 0 -64 0 debug_stick

## データを消す
    data remove storage api: Inventory[-1]

## ループ
    execute if data storage api: Inventory[] run function menu:-common/return.items/main.loop
