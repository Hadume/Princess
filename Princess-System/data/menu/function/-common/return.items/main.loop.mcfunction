#> menu:-common/return.items/main.loop
#
# @within function menu:-common/return.items/
# @private

## Slotを消す
    data remove storage api: Inventory[-1].Slot

## アイテムをシュルカーボックスに
    execute in overworld run data remove block 0 -64 0 Items
    execute in overworld run data modify storage api: Inventory[-1].Slot set value 0b
    execute in overworld run data modify block 0 -64 0 Items append from storage api: Inventory[-1]

## アイテムを返す
    execute if entity @s[nbt={Inventory:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]}] in overworld run loot spawn ~ ~ ~ mine 0 -64 0 debug_stick
    execute if entity @s[nbt=!{Inventory:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]}] in overworld run loot give @s mine 0 -64 0 debug_stick

## データを消す
    data remove storage api: Inventory[-1]

## ループ
    execute if data storage api: Inventory[] run function menu:-common/return.items/main.loop
