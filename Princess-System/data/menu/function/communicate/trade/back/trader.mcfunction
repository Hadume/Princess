#> menu:communicate/trade/back/trader
# 取引相手もホームに戻す
# @within function menu:communicate/trade/back/

## 自身のスコアをリセット
    scoreboard players reset @s tradeWith

## インベントリーを取得
    function #api:get.nbt/inventory

## UI以外のアイテムを消す
    execute if data storage api: Inventory[{slot:0b}] run data remove storage api: Inventory[{slot:0b}]
    execute if data storage api: Inventory[{slot:1b}] run data remove storage api: Inventory[{slot:1b}]
    execute if data storage api: Inventory[{slot:2b}] run data remove storage api: Inventory[{slot:2b}]
    execute if data storage api: Inventory[{slot:3b}] run data remove storage api: Inventory[{slot:3b}]
    execute if data storage api: Inventory[{slot:4b}] run data remove storage api: Inventory[{slot:4b}]
    execute if data storage api: Inventory[{slot:5b}] run data remove storage api: Inventory[{slot:5b}]
    execute if data storage api: Inventory[{slot:6b}] run data remove storage api: Inventory[{slot:6b}]
    execute if data storage api: Inventory[{slot:7b}] run data remove storage api: Inventory[{slot:7b}]
    execute if data storage api: Inventory[{slot:8b}] run data remove storage api: Inventory[{slot:8b}]
    execute if data storage api: Inventory[{slot:101b}] run data remove storage api: Inventory[{slot:101b}]
    execute if data storage api: Inventory[{slot:102b}] run data remove storage api: Inventory[{slot:102b}]
    execute if data storage api: Inventory[{slot:103b}] run data remove storage api: Inventory[{slot:103b}]
    execute if data storage api: Inventory[{slot:104b}] run data remove storage api: Inventory[{slot:104b}]
    execute if data storage api: Inventory[{slot:-106b}] run data remove storage api: Inventory[{slot:-106b}]

## ホームに戻る
    function menu:communicate/back
