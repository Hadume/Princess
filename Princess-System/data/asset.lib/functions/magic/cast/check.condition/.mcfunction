#> asset.lib:magic/cast/check.condition/
# 魔法発動に必要な要素を確認
# @input storage asset:magic
#   Name : JsonText
#   MP : int
#   CoolTime : int
#   Multiple? : int
# @within function asset:magic/*/cast/check.condition

## 引数を確認
  execute store success storage asset:temp Error byte 1 unless data storage asset:magic Name run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "asset:magic Name"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:magic MP run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "asset:magic MP"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:magic CoolTime run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "asset:magic CoolTime"}]
## もろもろの確認
  execute unless data storage asset:temp Error run function asset.lib:magic/cast/check.condition/main
## 一時使用Storageを削除
  execute if data storage asset:temp Error run data remove storage asset:temp Error
