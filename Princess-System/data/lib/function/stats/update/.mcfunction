#> lib:stats/update/
#
# @input
#   as entity
#   storage lib: [Stats] @ N
# @within tag/function lib:stats/update

## 引数を確認
	execute store success storage temp: Error byte 1 unless data storage lib: Stats run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"lib: Stats"]

##
	execute unless data storage temp: Error run function lib:stats/update/main

## 引数を削除
	data remove storage lib: Stats

## 一時使用Storageを削除
	execute if data storage temp: Error run data remove storage temp: Error
