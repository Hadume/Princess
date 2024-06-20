#> asset.lib:magic/cast/spell/check.condition
#
# @input storage asset:magic
#   Name : JsonText
#   Amount : int
#   Duration : int
#   Range : float
#   Pierce? : float
#   Speed? : float
#   Targets? : [String] @ ..2
#   Elements? : [String] @ ..5
# @within asset:magic/*/cast/main

## 引数の確認
  execute store success storage asset:temp Error byte 1 unless data storage asset:magic Name run tellraw @a [{"storage":"main:","nbt":"ArgumentError"},{"text": "asset:magic Name"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:magic Amount run tellraw @a [{"storage":"main:","nbt":"ArgumentError"},{"text": "asset:magic Amount"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:magic Duration run tellraw @a [{"storage":"main:","nbt":"ArgumentError"},{"text": "asset:magic Duration"}]
  execute store success storage asset:temp Error byte 1 unless data storage asset:magic Range run tellraw @a [{"storage":"main:","nbt":"ArgumentError"},{"text": "asset:magic Range"}]
##
  execute unless data storage asset:temp Error run function asset.lib:magic/cast/spell/main
## 引数を削除
  data remove storage asset:magic Name
  data remove storage asset:magic Amount
  data remove storage asset:magic Duration
  data remove storage asset:magic Range
  execute if data storage asset:magic Pierce run data remove storage asset:magic Pierce
  execute if data storage asset:magic Pierce run data remove storage asset:magic Speed
  execute if data storage asset:magic Pierce run data remove storage asset:magic Targets
  execute if data storage asset:magic Pierce run data remove storage asset:magic Elements
## 一時使用Storageを削除
  execute if data storage asset:temp Error run data remove storage asset:temp Error
