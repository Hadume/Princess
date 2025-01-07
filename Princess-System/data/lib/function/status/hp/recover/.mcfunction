#> lib:status/hp/recover/
# HPを回復する
# @input
#   as entity
#   storage lib: RcvrHP.Amount : int
# @within tag/function lib:status/hp/recover

## 引数の確認
	execute store success storage temp: Error byte 1 unless data storage lib: RcvrHP.Amount run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"lib: RcvrHP.Amount"]

## 処理
	execute unless data storage temp: Error run function lib:status/hp/recover/main

## 引数を削除
	data remove storage lib: RcvrHP

## 一時使用Storageを削除
	data remove storage temp: Error
