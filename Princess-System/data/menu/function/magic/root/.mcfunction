#> menu:magic/root/
# 魔法メニューの動作
# @within function menu:magic/

## どこかをクリックしたら
    execute if items entity @s player.cursor *[custom_data~{menu:{Back:1b}}] run return run function menu:magic/back
    ### 魔法をセットする
        execute if items entity @s player.cursor *[custom_data~{menu:{Magic:{Click:1b}}}] run data modify storage temp: menu set value 3100
        execute if items entity @s player.cursor *[custom_data~{menu:{Magic:{ClickS:1b}}}] run data modify storage temp: menu set value 3200
        execute if items entity @s player.cursor *[custom_data~{menu:{Magic:{Offhand:1b}}}] run data modify storage temp: menu set value 3300
        execute if items entity @s player.cursor *[custom_data~{menu:{Magic:{OffhandS:1b}}}] run data modify storage temp: menu set value 3400
        execute if data storage temp: menu run return run function menu:magic/root/set/


## 杖が変わっていたら
    execute store success storage temp: changed byte 1 run data modify storage dat: _.menu.Magic.Wand set from storage api: Inventory[{slot:22b}]
    execute store success storage temp: changed byte 1 if data storage dat: _.menu.Magic.Wand unless data storage api: Inventory[{slot:22b}] run data remove storage dat: _.menu.Magic.Wand
    execute if data storage temp: {changed:1b} run function menu:magic/root/ui/

## いらないアイテムを消す
    data remove storage api: Inventory[{slot:22b}]

## 欠けていたら修復
    execute unless score #invCount temp matches 26 run function menu:-common/repair {Parent:"magic",Child:"root"}

## 一時使用storageを削除
    execute if data storage temp: changed run data remove storage temp: changed
