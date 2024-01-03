#> asset:move/13004/open/
# 
# @within function asset:move/13004/condition

## インベントリー参照
  function api:inventory/
## 鍵を開けられるように
  execute unless data storage asset.temp: {Door:{Front:1b}} if entity @s[tag=Locking] run tag @s remove Locking
## 鍵を開ける
  execute if data storage api: {Inventory:[{id:"minecraft:totem_of_undying",tag:{TotemKey:1b}}]} if data storage asset.temp: {Door:{Front:1b}} if entity @s[tag=!Locking] run function asset:move/13004/open/open
  execute unless data storage api: {Inventory:[{id:"minecraft:totem_of_undying",tag:{TotemKey:1b}}]} if data storage asset.temp: {Door:{Front:1b}} if entity @s[tag=!Locking] run function asset:move/13004/open/locking
