#> menu:communicate/trade/open/ui
# UIの初期設定
# @within function menu:communicate/trade/open/

## メニューID
    scoreboard players set @s menu 7200

## 決定までの時間を設定
    scoreboard players set @s tradeDecideTimer -1

## UI
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

##
    function menu:-common/repair {Parent:"communicate",Child:"trade"}

## 空白slotを作る
    loot replace entity @s inventory.5 loot menu:frame.light_gray
    loot replace entity @s inventory.6 loot menu:frame.light_gray
    loot replace entity @s inventory.7 loot menu:frame.light_gray
    loot replace entity @s inventory.14 loot menu:frame.light_gray
    loot replace entity @s inventory.15 loot menu:frame.light_gray
    loot replace entity @s inventory.16 loot menu:frame.light_gray
    loot replace entity @s inventory.23 loot menu:frame.light_gray
    loot replace entity @s inventory.24 loot menu:frame.light_gray
    loot replace entity @s inventory.25 loot menu:frame.light_gray
