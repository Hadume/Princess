#> menu:-common/return.items/
# アイテムを返す
# @within function menu:-common/repair

## 要らないアイテムを消す
    data remove storage api: Inventory[{components:{"minecraft:custom_data":{Menu:{}}}}]
    ### ホットバー、装備、オフハンド
        execute if data storage api: Inventory[{Slot:0b}] run data remove storage api: Inventory[{Slot:0b}]
        execute if data storage api: Inventory[{Slot:1b}] run data remove storage api: Inventory[{Slot:1b}]
        execute if data storage api: Inventory[{Slot:2b}] run data remove storage api: Inventory[{Slot:2b}]
        execute if data storage api: Inventory[{Slot:3b}] run data remove storage api: Inventory[{Slot:3b}]
        execute if data storage api: Inventory[{Slot:4b}] run data remove storage api: Inventory[{Slot:4b}]
        execute if data storage api: Inventory[{Slot:5b}] run data remove storage api: Inventory[{Slot:5b}]
        execute if data storage api: Inventory[{Slot:6b}] run data remove storage api: Inventory[{Slot:6b}]
        execute if data storage api: Inventory[{Slot:7b}] run data remove storage api: Inventory[{Slot:7b}]
        execute if data storage api: Inventory[{Slot:8b}] run data remove storage api: Inventory[{Slot:8b}]
        execute if data storage api: Inventory[{Slot:100b}] run data remove storage api: Inventory[{Slot:100b}]
        execute if data storage api: Inventory[{Slot:101b}] run data remove storage api: Inventory[{Slot:101b}]
        execute if data storage api: Inventory[{Slot:102b}] run data remove storage api: Inventory[{Slot:102b}]
        execute if data storage api: Inventory[{Slot:103b}] run data remove storage api: Inventory[{Slot:103b}]
        execute if data storage api: Inventory[{Slot:-106b}] run data remove storage api: Inventory[{Slot:-106b}]


## 返すアイテムがあったら
    execute if data storage api: Inventory[] run function menu:-common/return.items/main.loop
