#> menu:storage/root/items/save
# アイテムを保存
# @within function menu:storage/root/

## 要らないデータを消す
    data remove storage api: Inventory[{components:{"minecraft:custom_data":{menu:{}}}}]
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
    $data modify storage dat: _.menu.storage[$(page)] set from storage api: Inventory
