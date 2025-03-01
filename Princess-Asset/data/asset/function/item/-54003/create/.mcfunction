#> asset:item/-54003/create/
#
# @within function asset:item/create/

## アイテム : id(minecraft:item)
	data modify storage asset:item id set value "iron_chestplate"

## 名前 : TextComponent
	data modify storage asset:item Name set value '{"text":"鉄鎧"}'

## 説明? : [TextComponent] @ N
#data modify storage asset:item Lore set value []

## 種類 : Category
	data modify storage asset:item Category set value "Armor"

## レアリティ : int @ 1..10
	data modify storage asset:item Rarity set value 5

## 効果? : [{Name: Stats, Operation: int @ 0..2, Amount: int}] @ N
	data modify storage asset:item Stats set value [{Name:"HPMax",Operation:1,Amount:10},{Name:"MPMax",Operation:1,Amount:10}]

## NBT? : NBTCompound
	data modify storage asset:item NBT set value {Enchantments:[{id:"mending",lvl:1s}]}
