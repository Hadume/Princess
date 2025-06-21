#> menu:communicate/trade/decide/trade/common
#
# @within function menu:communicate/trade/decide/trade/

## 渡すアイテム
    ###
        execute if data storage api: Inventory[{slot:10b}] run data modify storage temp: TradeItems append from storage api: Inventory[{slot:10b}]
        execute if data storage api: Inventory[{slot:10b}] run data modify storage temp: TradeItems[{slot:10b}].slot set value 0b
        execute if data storage api: Inventory[{slot:10b}] run item replace entity @s inventory.1 with air

    ###
        execute if data storage api: Inventory[{slot:11b}] run data modify storage temp: TradeItems append from storage api: Inventory[{slot:11b}]
        execute if data storage api: Inventory[{slot:11b}] run data modify storage temp: TradeItems[{slot:11b}].slot set value 1b
        execute if data storage api: Inventory[{slot:11b}] run item replace entity @s inventory.2 with air

    ###
        execute if data storage api: Inventory[{slot:12b}] run data modify storage temp: TradeItems append from storage api: Inventory[{slot:12b}]
        execute if data storage api: Inventory[{slot:12b}] run data modify storage temp: TradeItems[{slot:12b}].slot set value 2b
        execute if data storage api: Inventory[{slot:12b}] run item replace entity @s inventory.3 with air

    ###
        execute if data storage api: Inventory[{slot:19b}] run data modify storage temp: TradeItems append from storage api: Inventory[{slot:19b}]
        execute if data storage api: Inventory[{slot:19b}] run data modify storage temp: TradeItems[{slot:19b}].slot set value 3b
        execute if data storage api: Inventory[{slot:13b}] run item replace entity @s inventory.10 with air

    ###
        execute if data storage api: Inventory[{slot:20b}] run data modify storage temp: TradeItems append from storage api: Inventory[{slot:20b}]
        execute if data storage api: Inventory[{slot:20b}] run data modify storage temp: TradeItems[{slot:20b}].slot set value 4b
        execute if data storage api: Inventory[{slot:20b}] run item replace entity @s inventory.11 with air

    ###
        execute if data storage api: Inventory[{slot:21b}] run data modify storage temp: TradeItems append from storage api: Inventory[{slot:21b}]
        execute if data storage api: Inventory[{slot:21b}] run data modify storage temp: TradeItems[{slot:21b}].slot set value 5b
        execute if data storage api: Inventory[{slot:21b}] run item replace entity @s inventory.12 with air

    ###
        execute if data storage api: Inventory[{slot:28b}] run data modify storage temp: TradeItems append from storage api: Inventory[{slot:28b}]
        execute if data storage api: Inventory[{slot:28b}] run data modify storage temp: TradeItems[{slot:28b}].slot set value 6b
        execute if data storage api: Inventory[{slot:28b}] run item replace entity @s inventory.19 with air

    ###
        execute if data storage api: Inventory[{slot:29b}] run data modify storage temp: TradeItems append from storage api: Inventory[{slot:29b}]
        execute if data storage api: Inventory[{slot:29b}] run data modify storage temp: TradeItems[{slot:29b}].slot set value 7b
        execute if data storage api: Inventory[{slot:29b}] run item replace entity @s inventory.20 with air

    ###
        execute if data storage api: Inventory[{slot:30b}] run data modify storage temp: TradeItems append from storage api: Inventory[{slot:30b}]
        execute if data storage api: Inventory[{slot:30b}] run data modify storage temp: TradeItems[{slot:30b}].slot set value 8b
        execute if data storage api: Inventory[{slot:30b}] run item replace entity @s inventory.21 with air


## アイテムを設定
    execute in overworld run data remove block 0 -64 0 Items
    execute in overworld run data modify block 0 -64 0 Items append from storage temp: TradeItems[]

## アイテムを渡す
    scoreboard players operation #tradeWith temp = @s tradeWith
    execute as @a if score @s ID = #tradeWith temp in overworld run loot give @s mine 0 -64 0 debug_stick

## 一時使用scoreHolderをリセット
    scoreboard players reset #tradeWith temp

## 一時使用storageを削除
    data remove storage temp: TradeItems
