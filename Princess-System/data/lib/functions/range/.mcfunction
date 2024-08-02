#> lib:range/
#
# @input
#   as entity
#   storage lib:
#     Range.Amount : float
#     Range.Pierce : int
#     Range.Targets? : [Target] @ ..2
#     Range.NoHurtTime : boolean
# @output
#   tag Lib.InRange
#   storage lib: Range.Pierced : int
# @api

## 引数の確認
	execute store success storage lib:temp Error byte 1 unless data storage lib: Range.Amount run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "Range.Amount"}]
	execute store success storage lib:temp Error byte 1 unless data storage lib: Range.Pierce run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "Range.Pierce"}]
##
	execute unless data storage lib:temp Error run function lib:range/main
## 引数を削除
	data remove storage lib: Range.Amount
	data remove storage lib: Range.Pierce
	execute if data storage lib: Range.Targets run data remove storage lib: Range.Targets
	execute if data storage lib: Range.NoHurtTime run data remove storage lib: Range.NoHurtTime
## 一時使用Storageを削除
	data remove storage lib:temp Error
