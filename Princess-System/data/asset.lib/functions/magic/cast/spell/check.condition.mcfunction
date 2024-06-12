#> asset.lib:magic/cast/spell/check.condition
# オブジェクトを使う魔法
# @input storage asset:magic
#   Amount : int
#   Duration : int
#   Range : float
#   Speed? : float
#   Element? : [String] @ ..5
#   Pierce? : int
#   Target? : String
# @within function asset:magic/*/cast/main

## 
  execute store success storage asset:temp Error byte 1 unless data storage asset:magic Amount run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "asset:magic Amount"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:magic Duration run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "asset:magic Duration"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:magic Range run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "asset:magic Range"}]
## 
  execute unless data storage asset:temp Error run function asset.lib:magic/cast/spell/main
## 引数を削除
  data remove storage asset:magic Amount
  data remove storage asset:magic Duration
  data remove storage asset:magic Range
  execute if data storage asset:magic Pierce run data remove storage asset:magic Pierce
  execute if data storage asset:magic Spread run data remove storage asset:magic Spread
  execute if data storage asset:magic Speed run data remove storage asset:magic Speed
  execute if data storage asset:magic Targets run data remove storage asset:magic Targets
  execute if data storage asset:magic Elements run data remove storage asset:magic Elements
## 一時使用Storageを削除
  execute if data storage asset:temp Error run data remove storage asset:temp Error
