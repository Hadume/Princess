#> asset.lib:magic/types/check.condition/
# 魔法発動に必要な要素を確認
# @input storage asset:magic Raw
#   Name : JsonText
#   MP : int
#   Cooltime : int
#   Multiple? : int
# @within function asset:magic/*/types

##
  data remove storage asset:magic Argument
## 引数を確認
  execute store success storage asset:temp Error byte 1 unless data storage asset:magic Raw.Name run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "asset:magic Name"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:magic Raw.MP run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "asset:magic MP"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:magic Raw.Cooltime run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "asset:magic Cooltime"}]
##
  execute unless data storage asset:temp Error run data modify storage asset:magic IsFull set value 1b
## 一時使用Storageを削除
  execute if data storage asset:temp Error run data remove storage asset:temp Error
