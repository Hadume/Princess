#> asset.lib:mob/summon/check.condition
# 
# @within asset:mob/*/summon/main

## 足りていなかったら
  execute store success storage asset:temp Error byte 1 unless data storage asset:mob Name run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "asset:mob Name","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:mob Status.Lvl run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "asset:mob Status.Lvl","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:mob Status.Exp run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "asset:mob Status.Exp","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:mob Status.Money run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "asset:mob Status.Money","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:mob Status.HP run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "asset:mob Status.HP","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:mob Status.MP run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "asset:mob Status.MP","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:mob Status.Speed run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "asset:mob Status.Speed","italic": true,"color": "red"}]
  ### 
    execute if data storage asset:temp Error as @e[tag=Init,limit=1] at @s run tp @s ~ -3000 ~
    execute if data storage asset:temp Error as @e[tag=Init,limit=1] run kill @s
## 足りていたら
  execute unless data storage asset:temp Error as @e[tag=Init,limit=1] run function asset.lib:mob/summon/main
## Storageを削除
  data remove storage asset:mob Name
  data remove storage asset:mob Status
  execute if data storage asset:mob Armor run data remove storage asset:mob Armor
  execute if data storage asset:mob Weapon run data remove storage asset:mob Weapon
  execute if data storage asset:mob NBT run data remove storage asset:mob NBT
## 一時使用Storageを削除
  execute if data storage asset:temp Error run data remove storage asset:temp Error
