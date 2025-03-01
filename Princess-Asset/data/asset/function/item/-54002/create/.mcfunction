#> asset:item/-54002/create/
#
# @within function asset:item/create/

## アイテム : id(minecraft:item)
	data modify storage asset:item id set value "iron_helmet"

## 名前 : TextComponent
	data modify storage asset:item Name set value '{"text":"鉄兜"}'

## 説明? : [TextComponent] @ N
#data modify storage asset:item Lore set value []

## 種類 : Category
	data modify storage asset:item Category set value "Armor"

## レアリティ : int @ 1..10
	data modify storage asset:item Rarity set value 3

## 効果? : [{Name: Stats, Operation: int @ 0..2, Amount: int}] @ N
	data modify storage asset:item Stats set value [{Name:"HPMax",Operation:0,Amount:10},{Name:"MPMax",Operation:0,Amount:10}]

## NBT? : NBTCompound
#data modify storage asset:item NBT set value {}
