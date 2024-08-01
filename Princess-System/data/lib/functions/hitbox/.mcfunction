#> lib:hitbox/
#
# @input storage lib: Hitbox.id : id(minecraft:entity)
# @output storage lib: Hitbox.Size : [float, float] @ 2
# @api

## 引数の確認
	execute store success storage lib:temp Error byte 1 unless data storage lib: Hitbox.id run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "Hitbox.id"}]
##
	execute unless data storage lib:temp Error run function lib:hitbox/main
## 引数を削除
	data remove storage lib: Hitbox.id
## 一時使用Storageを削除
	data remove storage lib:temp Error
