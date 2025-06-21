#> menu:-common/return.items/
# アイテムを返す
# @within function menu:-common/repair

## 要らないアイテムを消す
    data remove storage api: Inventory[{components:{"minecraft:custom_data":{menu:{}}}}]
    ### ホットバー、装備、オフハンド
        execute if data storage api: Inventory[{slot:0b}] run data remove storage api: Inventory[{slot:0b}]
        execute if data storage api: Inventory[{slot:1b}] run data remove storage api: Inventory[{slot:1b}]
        execute if data storage api: Inventory[{slot:2b}] run data remove storage api: Inventory[{slot:2b}]
        execute if data storage api: Inventory[{slot:3b}] run data remove storage api: Inventory[{slot:3b}]
        execute if data storage api: Inventory[{slot:4b}] run data remove storage api: Inventory[{slot:4b}]
        execute if data storage api: Inventory[{slot:5b}] run data remove storage api: Inventory[{slot:5b}]
        execute if data storage api: Inventory[{slot:6b}] run data remove storage api: Inventory[{slot:6b}]
        execute if data storage api: Inventory[{slot:7b}] run data remove storage api: Inventory[{slot:7b}]
        execute if data storage api: Inventory[{slot:8b}] run data remove storage api: Inventory[{slot:8b}]
        execute if data storage api: Inventory[{slot:100b}] run data remove storage api: Inventory[{slot:100b}]
        execute if data storage api: Inventory[{slot:101b}] run data remove storage api: Inventory[{slot:101b}]
        execute if data storage api: Inventory[{slot:102b}] run data remove storage api: Inventory[{slot:102b}]
        execute if data storage api: Inventory[{slot:103b}] run data remove storage api: Inventory[{slot:103b}]
        execute if data storage api: Inventory[{slot:-106b}] run data remove storage api: Inventory[{slot:-106b}]


## 返すアイテムがあったら
    execute if data storage api: Inventory[] run function menu:-common/return.items/main.loop
