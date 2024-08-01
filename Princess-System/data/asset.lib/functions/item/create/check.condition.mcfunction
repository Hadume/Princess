#> asset.lib:item/create/check.condition
# アイテムを生成できるか確認
# @input storage asset:item
#   id : id(minecraft:item)
#   Name : JsonText
#   Category : String
#   Rarity : int
#   Lore? : [JsonText] @ N
#   Stats : [{Name : String, Amount : int, Operation? : int}] @ N
#   NBT : Compound
# @output vector 0 -64 0 Items[0]
# @within asset:item/*/create/main

## 足りていなかったら
	execute store success storage asset:temp Error byte 1 unless data storage asset:item id run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "asset:item id"}]
	execute store success storage asset:temp Error byte 1 unless data storage asset:item Name run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "asset:item Name"}]
	execute store success storage asset:temp Error byte 1 unless data storage asset:item Category run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "asset:item Category"}]
	execute store success storage asset:temp Error byte 1 unless data storage asset:item Rarity run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},{"text": "asset:item Rarity"}]
## 足りていたら
	execute unless data storage asset:temp Error run function asset.lib:item/create/main
## Storageを削除
	data remove storage asset:item id
	data remove storage asset:item Category
	data remove storage asset:item Name
	data remove storage asset:item Rarity
	execute if data storage asset:item Lore run data remove storage asset:item Lore
	execute if data storage asset:item Stats run data remove storage asset:item Stats
	execute if data storage asset:item NBT run data remove storage asset:item NBT
## 一時使用Storageを削除
	execute if data storage asset:temp Error run data remove storage asset:temp Error
