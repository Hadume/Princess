#> lib:stats/
#
# @input
#   as entity
#   storage: lib: Stats
# @api

## 引数を確認
	execute store success storage lib:temp Error byte 1 unless data storage lib: Stats run tellraw @a [{"storage":"main:","nbt":"ArgumentError"},{"text": "lib: Stats"}]
##
	execute unless data storage lib:temp Error run function lib:stats/main
## 引数を削除
	data remove storage lib: Stats
## 一時使用Storageを削除
	execute if data storage lib:temp Error run data remove storage lib:temp Error
