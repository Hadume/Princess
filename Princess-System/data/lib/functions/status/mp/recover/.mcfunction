#> lib:status/mp/recover/
# MPを回復する
# @input
#   as entity
#   storage lib: RcvrMP.Amount : int
# @api

## 引数の確認
	execute store success storage lib:temp Error byte 1 unless data storage lib: RcvrMP.Amount run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "lib: RcvrMP.Amount"}]
## 処理
	execute unless data storage lib:temp Error run function lib:status/mp/recover/main
## 引数を削除
	data remove storage lib: RcvrMP
## 一時使用Storageを削除
	data remove storage lib:temp Error
