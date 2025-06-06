#> player:offhand
#
# @within function main:advancements/inventory_changed

## オフハンドのアイテムをコピー
    data modify storage player: Offhand set from storage api: Inventory[{Slot:-106b}]

## 魔法を唱える
    execute if data storage player: {Offhand:{components:{"minecraft:custom_data":{Category:"Wand"}}}} run function asset.lib:magic/cast/

## アイテムを戻す
    item replace entity @s weapon.mainhand from entity @s weapon.offhand
    item replace entity @s weapon.offhand with air

## Storageを削除
    data remove storage player: Offhand
