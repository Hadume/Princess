#> asset.lib:magic/cast/spell/check.condition
# 
# @within function asset:magic/*/cast/main

## 引数が足りてなかったら
  execute store success storage asset:temp Error byte 1 unless data storage asset:magic Name run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "asset:magic Name","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:magic Amount run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "asset:magic Amount","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:magic CoolTime run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "asset:CoolTime Name","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:magic Target run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "asset:magic Target","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:magic Multiple run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "asset:magic Multiple","italic": true,"color": "red"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:magic Pierce run tellraw @a [{"storage":"main:","nbt":"Tell.Error"},{"text": "引数が足りません; "},{"text": "asset:magic Pierce","italic": true,"color": "red"}]
## 足りていたら
  execute unless data storage asset:temp Error run function asset.lib:magic/cast/spell/
## Storageを削除
  data remove storage asset:magic Name
  data remove storage asset:magic Amount
  data remove storage asset:magic Target
  data remove storage asset:magic Multiple
  data remove storage asset:magic Pierce
  execute if data storage asset:magic Element run data remove storage asset:magic Element
  execute if data storage asset:magic Range run data remove storage asset:magic Range
  execute if data storage asset:magic Speed run data remove storage asset:magic Speed
  execute if data storage asset:magic Duration run data remove storage asset:magic Duration
## 一時使用ScoreHolderをリセット
  scoreboard players reset #MagicMP
## 一時使用Storageを削除
  execute if data storage asset:temp Error run data remove storage asset:temp Error
