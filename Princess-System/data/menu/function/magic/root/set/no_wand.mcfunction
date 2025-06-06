#> menu:magic/root/set/no_wand
#
# @within function menu:magic/root/set/

## いらないアイテムを消す
    data remove storage api: Inventory[{Slot:22b}]

## UIの修復
    function menu:-common/repair {Parent:"magic",Child:"root"}

## 音
    playsound block.note_block.bass block @s ~ ~ ~ 0.5 1.0 0.0
