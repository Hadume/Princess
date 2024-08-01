#> lib:spread/
#
# @input
#   as entity
#   position
#   storage lib:
#     Spread.Amount : [float] @ 2 || float
#     Spread.At? : [double] @ 3
#     Spread.OnGround? : boolean(default: false)
# @api

## 引数の確認
	execute store success storage lib:temp Error byte 1 unless data storage lib: Spread.Amount run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "Spread.Amount"}]
##
	execute unless data storage lib:temp Error run function lib:spread/main
## 引数を削除
	data remove storage lib: Spread
## 一時使用Storageを削除
	data remove storage lib:temp Error
