#> asset.lib:spawner/set/check.condition
# 
# @within function asset:spawner/*/set/main

## 引数が足りてるか確認
  execute store success storage asset:temp Error byte 1 unless data storage asset:spawner Data run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "asset:spawner Data","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:spawner Count run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "asset:spawner Count","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:spawner Delay run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "asset:spawner Delay","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:spawner Range run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "asset:spawner Range","italic": true,"color": "red"}]
  ### 足りなかったら
    execute if data storage asset:temp Error as @e[tag=Spawner.Init,limit=1] run kill @s
## 足りていたら
  execute unless data storage asset:temp Error as @e[tag=Spawner.Init,limit=1] run function asset.lib:spawner/set/main
## Storageを削除
  data remove storage asset:spawner Data
  data remove storage asset:spawner Count
  data remove storage asset:spawner Delay
  data remove storage asset:spawner Range
## 一時使用Storageを削除
  execute if data storage asset:temp Error run data remove storage asset:temp Error
