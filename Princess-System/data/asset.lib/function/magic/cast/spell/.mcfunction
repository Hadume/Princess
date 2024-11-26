#> asset.lib:magic/cast/spell/
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
# @within tag/function asset.lib:magic/cast/spell

## 引数の確認
	execute store success storage temp: Error byte 1 unless data storage asset:magic Name run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "asset:magic Name"}]
	execute store success storage temp: Error byte 1 unless data storage asset:magic Amount run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "asset:magic Amount"}]
	execute store success storage temp: Error byte 1 unless data storage asset:magic Duration run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "asset:magic Duration"}]
	execute store success storage temp: Error byte 1 unless data storage asset:magic Range run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "asset:magic Range"}]

##
	execute unless data storage temp: Error run function asset.lib:magic/cast/spell/main

## 一時使用Storageを削除
	execute if data storage temp: Error run data remove storage temp: Error
