#> player:offhand
# 
# @within function main:advancements/inventory_changed

## 魔法を唱える
  execute if data storage api: {Inventory:[{Slot:-106b,tag:{Category:"Wand"}}]} run function asset.lib:magic/cast/
## アイテムを戻す
  item replace entity @s weapon.mainhand from entity @s weapon.offhand
  item replace entity @s weapon.offhand with air
