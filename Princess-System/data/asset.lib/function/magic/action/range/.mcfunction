#> asset.lib:magic/action/range/
#
# @input storage asset:magic
#   Range : float
#   Pierce? : int
#   Targets? : [Target] @ ..2
#   Damage? : boolean
# @within function
#   asset.lib:magic/cast/action
#   asset.lib:magic/action/range/spell/
# @within tag/function asset.lib:magic/action/range/

## 引数を確認
	execute store success storage temp: Error byte 1 unless data storage asset:magic Range run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "temp: Magic.Range"}]

## 実行
	execute unless data storage temp: Error run function asset.lib:magic/action/range/main

## 引数を削除
	data remove storage asset:magic Range
	execute if data storage asset:magic Pierce run data remove storage asset:magic Pierce
	execute if data storage asset:magic Targets run data remove storage asset:magic Targets
	execute if data storage asset:magic Damage run data remove storage asset:magic Damage

## 一時使用Storageを削除
	execute if data storage temp: Error run data remove storage temp: Error
