#> lib:range/
#
# @input
#   as entity
#   storage lib: Range
#     Amount : float
#     Pierce : int
#     Targets? : [Target] @ ..2
#     NoHurtTime? : boolean
# @output
#   tag Lib.InRange
#   storage lib: Range.Pierced : int
# @within tag/function lib:range

## 引数の確認
	execute store success storage temp: Error byte 1 unless data storage lib: Range.Amount run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "lib: Range.Amount"}]
	execute store success storage temp: Error byte 1 unless data storage lib: Range.Pierce run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "lib: Range.Pierce"}]

##
	execute unless data storage temp: Error run function lib:range/main

## 引数を削除
	data remove storage lib: Range.Amount
	data remove storage lib: Range.Pierce
	execute if data storage lib: Range.Targets run data remove storage lib: Range.Targets
	execute if data storage lib: Range.NoHurtTime run data remove storage lib: Range.NoHurtTime

## 一時使用Storageを削除
	data remove storage temp: Error
