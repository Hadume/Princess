#> lib:spread/
#
# @input
#   as entity
#   position
#   storage lib: Spread
#     Amount : [float] @ 2 || float
#     At? : [double] @ 3
#     OnGround? : boolean
# @api

## 引数の確認
	execute store success storage temp: Error byte 1 unless data storage lib: Spread.Amount run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "lib: Spread.Amount"}]

##
	execute unless data storage temp: Error run function lib:spread/main

## 引数を削除
	data remove storage lib: Spread

## 一時使用Storageを削除
	data remove storage temp: Error
