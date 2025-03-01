#> asset.lib:magic/icon/
#
# @within function asset:magic/icon

## 引数を確認
	execute store success storage temp: Error byte 1 unless data storage asset:magic Item run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"asset:magic Item"]

##
	execute unless data storage temp: Error as 0-0-1-0-0 run function asset.lib:magic/icon/create

## 一時使用Storageを削除
	execute if data storage temp: Error run data remove storage temp: Error
