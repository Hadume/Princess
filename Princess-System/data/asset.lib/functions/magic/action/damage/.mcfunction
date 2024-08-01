#> asset.lib:magic/action/damage/
#
# @input
#   as entity
#   storage asset:magic
#     Amount : int
#     CasterID? : int
#     Elements? : [String] @ ..6
# @output storage asset:magic SroredDamage
# @within function
#   asset:magic/*/*/**
#   asset.lib:magic/action/range/main

## 引数の確認
	execute store success storage asset:temp Error byte 1 unless data storage asset:magic Amount run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "asset:magic Amount"}]
## 実行
	execute unless data storage asset:temp Error run function asset.lib:magic/action/damage/main
## 引数を削除
	data remove storage asset:magic Amount
	data remove storage asset:magic CasterID
	execute if data storage asset:magic Elements run data remove storage asset:magic Elements
## 一時使用Storageを削除
	execute if data storage asset:temp Error run data remove storage asset:temp Error
