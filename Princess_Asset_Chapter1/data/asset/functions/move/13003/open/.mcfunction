#> asset:move/13003/open/
# 
# @within function asset:move/13003/condition

## インベントリー参照
  function api:inventory/
## 鍵を開けられるように
  #execute unless data storage asset.temp: {Door:{Front:1b}} if entity @s[tag=Locking] run tag @s remove Locking
## 鍵を開ける
  execute if data storage api: {Inventory:[{id:"minecraft:lever",tag:{BasementKey:1b}}]} if data storage asset.temp: {Door:{Front:1b}} if entity @s[tag=!Locking] run function asset:move/13003/open/open
  #execute unless data storage api: {Inventory:[{id:"minecraft:lever",tag:{BasementKey:1b}}]} if data storage asset.temp: {Door:{Front:1b}} if entity @s[tag=!Locking] run function asset:move/13003/open/locking
