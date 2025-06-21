#> lib:death/entity/drop/item
# アイテムをドロップする
# @within function lib:death/entity/drop/loop

## アイテムの元を召喚
    loot spawn ~ ~ ~ loot lib:death/drop.root

## Assetアイテムをドロップ
    execute if data storage temp: Item.Item.id run function #asset:item/create with storage temp: Item.Item
    execute if data storage temp: Item.Item.id in overworld run data modify entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{DeathLoot:true}}}},limit=1] Item set from block 0 -64 0 Items[0]

## 通常アイテムをドロップ
    execute unless data storage temp: Item.Item.id run data modify entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{DeathLoot:true}}}},limit=1] Item set from storage temp: Item.Item

## 初期化componentsを削除
    execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{DeathLoot:true}}}},limit=1] run data remove entity @s Item.components."minecraft:custom_data".DeathLoot
