#> menu:communicate/trade/decide/trade/common
#
# @within function menu:communicate/trade/decide/trade/

## 渡すアイテム
    ###
        execute if data storage api: Inventory[{Slot:10b}] run data modify storage temp: TradeItems append from storage api: Inventory[{Slot:10b}]
        execute if data storage api: Inventory[{Slot:10b}] run data modify storage temp: TradeItems[{Slot:10b}].Slot set value 0b
        execute if data storage api: Inventory[{Slot:10b}] run item replace entity @s inventory.1 with air

    ###
        execute if data storage api: Inventory[{Slot:11b}] run data modify storage temp: TradeItems append from storage api: Inventory[{Slot:11b}]
        execute if data storage api: Inventory[{Slot:11b}] run data modify storage temp: TradeItems[{Slot:11b}].Slot set value 1b
        execute if data storage api: Inventory[{Slot:11b}] run item replace entity @s inventory.2 with air

    ###
        execute if data storage api: Inventory[{Slot:12b}] run data modify storage temp: TradeItems append from storage api: Inventory[{Slot:12b}]
        execute if data storage api: Inventory[{Slot:12b}] run data modify storage temp: TradeItems[{Slot:12b}].Slot set value 2b
        execute if data storage api: Inventory[{Slot:12b}] run item replace entity @s inventory.3 with air

    ###
        execute if data storage api: Inventory[{Slot:19b}] run data modify storage temp: TradeItems append from storage api: Inventory[{Slot:19b}]
        execute if data storage api: Inventory[{Slot:19b}] run data modify storage temp: TradeItems[{Slot:19b}].Slot set value 3b
        execute if data storage api: Inventory[{Slot:13b}] run item replace entity @s inventory.10 with air

    ###
        execute if data storage api: Inventory[{Slot:20b}] run data modify storage temp: TradeItems append from storage api: Inventory[{Slot:20b}]
        execute if data storage api: Inventory[{Slot:20b}] run data modify storage temp: TradeItems[{Slot:20b}].Slot set value 4b
        execute if data storage api: Inventory[{Slot:20b}] run item replace entity @s inventory.11 with air

    ###
        execute if data storage api: Inventory[{Slot:21b}] run data modify storage temp: TradeItems append from storage api: Inventory[{Slot:21b}]
        execute if data storage api: Inventory[{Slot:21b}] run data modify storage temp: TradeItems[{Slot:21b}].Slot set value 5b
        execute if data storage api: Inventory[{Slot:21b}] run item replace entity @s inventory.12 with air

    ###
        execute if data storage api: Inventory[{Slot:28b}] run data modify storage temp: TradeItems append from storage api: Inventory[{Slot:28b}]
        execute if data storage api: Inventory[{Slot:28b}] run data modify storage temp: TradeItems[{Slot:28b}].Slot set value 6b
        execute if data storage api: Inventory[{Slot:28b}] run item replace entity @s inventory.19 with air

    ###
        execute if data storage api: Inventory[{Slot:29b}] run data modify storage temp: TradeItems append from storage api: Inventory[{Slot:29b}]
        execute if data storage api: Inventory[{Slot:29b}] run data modify storage temp: TradeItems[{Slot:29b}].Slot set value 7b
        execute if data storage api: Inventory[{Slot:29b}] run item replace entity @s inventory.20 with air

    ###
        execute if data storage api: Inventory[{Slot:30b}] run data modify storage temp: TradeItems append from storage api: Inventory[{Slot:30b}]
        execute if data storage api: Inventory[{Slot:30b}] run data modify storage temp: TradeItems[{Slot:30b}].Slot set value 8b
        execute if data storage api: Inventory[{Slot:30b}] run item replace entity @s inventory.21 with air


## アイテムを設定
    execute in overworld run data remove block 0 -64 0 Items
    execute in overworld run data modify block 0 -64 0 Items append from storage temp: TradeItems[]

## アイテムを渡す
    scoreboard players operation #Trade.With Temp = @s Trade.With
    execute as @a if score @s ID = #Trade.With Temp in overworld run loot give @s mine 0 -64 0 debug_stick

## 一時使用ScoreHolderをリセット
    scoreboard players reset #Trade.With Temp

## 一時使用Storageを削除
    data remove storage temp: TradeItems
