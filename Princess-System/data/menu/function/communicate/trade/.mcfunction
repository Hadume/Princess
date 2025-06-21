#> menu:communicate/trade/
# トレード中
# @within function menu:communicate/

## どこかをクリックしていたら
    execute if items entity @s player.cursor *[custom_data~{menu:{Back:1b}}] run return run function menu:communicate/trade/back/
    execute if items entity @s player.cursor *[custom_data~{menu:{TradeDecide:1b}},!custom_data~{menu:{display:1b}}] run function menu:communicate/trade/decide/timer/
    #execute if items entity @s player.cursor *[custom_data~{menu:{CommunicateTrade:1b}}] run function menu:communicate/select_action/trade/

## アイテムを相手の画面に移す
    ### slotのデータ
        data modify storage temp: displayItems set value [{slot:10b},{slot:11b},{slot:12b},{slot:19b},{slot:20b},{slot:21b},{slot:28b},{slot:29b},{slot:30b}]

    ### アイテムをコピー
        data modify storage temp: displayItems[{slot:10b}] set from storage api: Inventory[{slot:10b}]
        data modify storage temp: displayItems[{slot:11b}] set from storage api: Inventory[{slot:11b}]
        data modify storage temp: displayItems[{slot:12b}] set from storage api: Inventory[{slot:12b}]
        data modify storage temp: displayItems[{slot:19b}] set from storage api: Inventory[{slot:19b}]
        data modify storage temp: displayItems[{slot:20b}] set from storage api: Inventory[{slot:20b}]
        data modify storage temp: displayItems[{slot:21b}] set from storage api: Inventory[{slot:21b}]
        data modify storage temp: displayItems[{slot:28b}] set from storage api: Inventory[{slot:28b}]
        data modify storage temp: displayItems[{slot:29b}] set from storage api: Inventory[{slot:29b}]
        data modify storage temp: displayItems[{slot:30b}] set from storage api: Inventory[{slot:30b}]

    ## アイテムを表示
        scoreboard players operation #tradeWith temp = @s tradeWith
        execute as @a if score @s ID = #tradeWith temp run function menu:communicate/trade/ui/save


## いらないアイテムを消す
    data remove storage api: Inventory[{slot:10b}]
    data remove storage api: Inventory[{slot:11b}]
    data remove storage api: Inventory[{slot:12b}]
    data remove storage api: Inventory[{slot:19b}]
    data remove storage api: Inventory[{slot:20b}]
    data remove storage api: Inventory[{slot:21b}]
    data remove storage api: Inventory[{slot:28b}]
    data remove storage api: Inventory[{slot:29b}]
    data remove storage api: Inventory[{slot:30b}]

## 欠けていたら修復
    execute unless score #invCount temp matches 18 run function menu:-common/repair {Parent:"communicate",Child:"trade"}

## 一時使用scoreHolderをリセット
    scoreboard players reset #tradeWith temp

## 一時使用storageを削除
    data remove storage temp: displayItems
