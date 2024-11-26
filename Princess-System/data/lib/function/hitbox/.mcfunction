#> lib:hitbox/
#
# @input storage lib: Hitbox.id : id(minecraft:entity)
# @output storage lib: Hitbox.Size : [float] @ 2
# @within tag/function lib:hitbox

## 引数の確認
	execute store success storage temp: Error byte 1 unless data storage lib: Hitbox.id run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "lib: Hitbox.id"}]

##
	execute unless data storage temp: Error run function lib:hitbox/main

## 引数を削除
	data remove storage lib: Hitbox.id

## 一時使用Storageを削除
	data remove storage temp: Error
