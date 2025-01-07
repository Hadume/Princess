#> asset.lib:item/create/
# アイテムを生成できるか確認
# @input storage asset:item
#   id : id(minecraft:item)
#   Name : TextComponent
#   Category : Category
#   Rarity : int @ 1..10
#   Lore? : [TextComponent] @ N
#   Stats : [{Name: Stats, Operation: int @ 0..2, Amount: int}] @ N
#   NBT : Compound
# @output vector 0 -64 0 Items[0]
# @within tag/function asset.lib:item/create

## 足りていなかったら
	execute store success storage temp: Error byte 1 unless data storage asset:item id run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"asset:item id"]
	execute store success storage temp: Error byte 1 unless data storage asset:item Name run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"asset:item Name"]
	execute store success storage temp: Error byte 1 unless data storage asset:item Category run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"asset:item Category"]
	execute store success storage temp: Error byte 1 unless data storage asset:item Rarity run tellraw @a [{"storage":"main:","nbt":"Tell.ArgumentError"},"asset:item Rarity"]

## 足りていたら
	execute unless data storage temp: Error run function asset.lib:item/create/main

## Storageを削除
	data remove storage asset:item id
	data remove storage asset:item Category
	data remove storage asset:item Name
	data remove storage asset:item Rarity
	execute if data storage asset:item Lore run data remove storage asset:item Lore
	execute if data storage asset:item CanEquip run data remove storage asset:item CanEquip
	execute if data storage asset:item Series run data remove storage asset:item Series
	execute if data storage asset:item Stats run data remove storage asset:item Stats
	execute if data storage asset:item NBT run data remove storage asset:item NBT

## 一時使用Storageを削除
	execute if data storage temp: Error run data remove storage temp: Error
